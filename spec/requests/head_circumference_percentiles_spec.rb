require 'spec_helper'

describe "HeadCircumferencePercentiles" do
  describe "GET /head_circumference_percentiles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get head_circumference_percentiles_path
      response.status.should be(200)
    end
  end
end
