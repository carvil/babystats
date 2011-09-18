require 'open-uri'
require 'csv'

namespace :fetch_data do
  desc "Fetch data for height_percentile - girls"
  task :fetch_height_percentiles_girl_data, [:url] => :environment do |t, args|
    args.with_defaults(:url => "")

    table_data = open(args.url).read
    rows = CSV.parse(table_data, { col_sep: "\t" })

    headers = rows.first

    # TODO - print data in the seed format
  end
end
