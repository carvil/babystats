puts "Adding Percentile Indicators"

indicators = [ "height-for-age", "weight-for-age",
  "weight-for-length", "weight-for-height",
  "body-mass-index-for-age", "head-circumference-for-age",
  "arm-circumference-for-age", "subscapular-skinfold-for-age",
  "triceps-skinfold-for-age"]

indicators.each {|i| PercentileIndicator.create(name: i)}
