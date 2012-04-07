require 'csv'

# Add percentile data method
def add_data(filename, gender, indicator, measure_unit="cm")

  File.open(Rails.root.join(filename),"r") do |file|

      rows = CSV.parse(file.read, { col_sep: "\t" })
      headers = rows.first.map{|e| e.strip}

      rows.drop(1).each do |row|
        row = row.map{|e| e.strip}
        Percentile.create(
          :percentile_indicator_id => indicator,
          :gender         => gender,
          :day            => row[headers.index('Day')],
          :mean_m         => row[headers.index('M')],
          :variation_s    => row[headers.index('S')],
          :power_l        => row[headers.index('L')],
          :percentile_01  => row[headers.index('P01')],
          :percentile_1   => row[headers.index('P1')],
          :percentile_3   => row[headers.index('P3')],
          :percentile_5   => row[headers.index('P5')],
          :percentile_10  => row[headers.index('P10')],
          :percentile_15  => row[headers.index('P15')],
          :percentile_25  => row[headers.index('P25')],
          :percentile_50  => row[headers.index('P50')],
          :percentile_75  => row[headers.index('P75')],
          :percentile_85  => row[headers.index('P85')],
          :percentile_90  => row[headers.index('P90')],
          :percentile_95  => row[headers.index('P95')],
          :percentile_97  => row[headers.index('P97')],
          :percentile_99  => row[headers.index('P99')],
          :percentile_999 => row[headers.index('P999')],
          :measure_unit   => measure_unit)
      end
      puts "imported #{rows.size} height-for-age values"
  end

end

puts "==> Deleting old data"

PercentileIndicator.delete_all
Percentile.delete_all

puts "==> Adding Percentile Indicators"

indicators = [ "height-for-age", "weight-for-age",
  "weight-for-length", "weight-for-height",
  "body-mass-index-for-age", "head-circumference-for-age",
  "arm-circumference-for-age", "subscapular-skinfold-for-age",
  "triceps-skinfold-for-age"]

indicators.each {|i| PercentileIndicator.create(name: i)}

hfa = PercentileIndicator.find_by_name("height-for-age")

### Add height-for-age percentile data for boys

puts "==> Adding height for age percentiles - boys"
add_data("lib/data/lhfa_boys_p_exp.txt", "boy", hfa)

### Add height-for-age percentile data for girls

puts "==> Adding height for age percentiles - girls"
add_data("lib/data/lhfa_girls_p_exp.txt", "girl", hfa)

