require 'open-uri'
require 'csv'

namespace :fetch_data do
  desc "Fetch data for height_percentile"
  task :fetch_height_percentiles_data, [:url, :gender] => :environment do |t, args|

    table_data = open(args.url).read
    rows = CSV.parse(table_data, { col_sep: "\t" })

    headers = rows.first.map{|e| e.strip}

    rows.drop(1).each do |row|
      row = row.map{|e| e.strip}
      puts "importing #{row}"
      HeightPercentile.create(:gender => args.gender,
                              :month => row[headers.index('Month')],
                              :mean => row[headers.index('M')],
                              :sample_sd => row[headers.index('S')],
                              :standard_deviation => row[headers.index('SD')],
                              :p01 => (headers.index('P01').nil? ? "0" : row[headers.index('P01')]),
                              :p1 => row[headers.index('P1')],
                              :p3 => row[headers.index('P3')],
                              :p5 => row[headers.index('P5')],
                              :p10 => (headers.index('P10').nil? ? "0" : row[headers.index('P10')]),
                              :p15 => row[headers.index('P15')],
                              :p25 => row[headers.index('P25')],
                              :p50 => row[headers.index('P50')],
                              :p75 => row[headers.index('P75')],
                              :p85 => row[headers.index('P85')],
                              :p90 => (headers.index('P90').nil? ? "0" : row[headers.index('P90')]),
                              :p95 => row[headers.index('P95')],
                              :p97 => row[headers.index('P97')],
                              :p99 => row[headers.index('P99')],
                              :p999 => (headers.index('P999').nil? ? "0" : row[headers.index('P999')]))
    end
  end

  desc "Fetch data for weight_percentile"
  task :fetch_weight_percentiles_data, [:url, :gender] => :environment do |t, args|

    table_data = open(args.url).read
    rows = CSV.parse(table_data, { col_sep: "\t" })

    headers = rows.first.map{|e| e.strip}

    rows.drop(1).each do |row|
      row = row.map{|e| e.strip}
      puts "importing #{row}"
      WeightPercentile.create(:gender => args.gender,
                              :month => row[headers.index('Month')],
                              :mean => row[headers.index('M')],
                              :sample_sd => row[headers.index('S')],
                              :l => row[headers.index('L')],
                              :p01 => (headers.index('P01').nil? ? "0" : row[headers.index('P01')]),
                              :p1 => row[headers.index('P1')],
                              :p3 => row[headers.index('P3')],
                              :p5 => row[headers.index('P5')],
                              :p10 => (headers.index('P10').nil? ? "0" : row[headers.index('P10')]),
                              :p15 => row[headers.index('P15')],
                              :p25 => row[headers.index('P25')],
                              :p50 => row[headers.index('P50')],
                              :p75 => row[headers.index('P75')],
                              :p85 => row[headers.index('P85')],
                              :p90 => (headers.index('P90').nil? ? "0" : row[headers.index('P90')]),
                              :p95 => row[headers.index('P95')],
                              :p97 => row[headers.index('P97')],
                              :p99 => row[headers.index('P99')],
                              :p999 => (headers.index('P999').nil? ? "0" : row[headers.index('P999')]))
    end
  end

  desc "Fetch data for body_mass_percentile"
  task :fetch_body_mass_percentiles_data, [:url, :gender, :measure] => :environment do |t, args|

    table_data = open(args.url).read
    rows = CSV.parse(table_data, { col_sep: "\t" })

    headers = rows.first.map{|e| e.strip}

    rows.drop(1).each do |row|
      row = row.map{|e| e.strip}
      puts "importing #{row}"
      BodyMassPercentile.create(:gender => args.gender,
                                :month => row[headers.index('Month')],
                                :mean => row[headers.index('M')],
                                :sample_sd => row[headers.index('S')],
                                :l => row[headers.index('L')],
                                :p01 => (headers.index('P01').nil? ? "0" : row[headers.index('P01')]),
                                :p1 => row[headers.index('P1')],
                                :p3 => row[headers.index('P3')],
                                :p5 => row[headers.index('P5')],
                                :p10 => (headers.index('P10').nil? ? "0" : row[headers.index('P10')]),
                                :p15 => row[headers.index('P15')],
                                :p25 => row[headers.index('P25')],
                                :p50 => row[headers.index('P50')],
                                :p75 => row[headers.index('P75')],
                                :p85 => row[headers.index('P85')],
                                :p90 => (headers.index('P90').nil? ? "0" : row[headers.index('P90')]),
                                :p95 => row[headers.index('P95')],
                                :p97 => row[headers.index('P97')],
                                :p99 => row[headers.index('P99')],
                                :p999 => (headers.index('P999').nil? ? "0" : row[headers.index('P999')]),
                                :measure_unit => args.measure)
    end
  end
end
