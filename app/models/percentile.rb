class Percentile < ActiveRecord::Base
  has_one :percentile_indicator

  scope :min_height_for_age_boys , where(gender: "boy").select("month, percentile_01 as percentile").order(:month)
  scope :min_height_for_age_girls, where(gender: "girl").select("month, percentile_01 as percentile").order(:month)

  scope :max_height_for_age_boys , where(gender: "boy").select("month, percentile_999 as percentile").order(:month)
  scope :max_height_for_age_girls, where(gender: "girl").select("month, percentile_999 as percentile").order(:month)

  # generate data for the graph for a given baby
  def self.generate_graph_data(baby)
    if baby
      max, min = []
      case baby.gender
      when "boy"
        # Max Percentile
        max = max_height_for_age_boys.map{|p| [(baby.dob.to_time + (p.month * 1.month)).to_i * 1000, p.percentile] }
        # Min Percentile
        min = min_height_for_age_boys.map{|p| [(baby.dob.to_time + (p.month * 1.month)).to_i * 1000, p.percentile] }
      when "girl"
        # Max Percentile
        max = max_height_for_age_girls.map{|p| [(baby.dob.to_time + (p.month * 1.month)).to_i * 1000, p.percentile] }
        # Min Percentile
        min = min_height_for_age_girls.map{|p| [(baby.dob.to_time + (p.month * 1.month)).to_i * 1000, p.percentile] }
      end

      # Baby Current Percentile
      # TODO

      [
        {name: "Percentile 999", pointInterval: 1.month * 1000, pointStart: baby.dob.to_time.to_i * 1000, data: max},
        {name: "Percentile 01",  pointInterval: 1.month * 1000, pointStart: baby.dob.to_time.to_i * 1000, data: min}
      ]
    end
  end
end
