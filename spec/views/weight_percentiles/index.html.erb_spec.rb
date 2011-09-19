require 'spec_helper'

describe "weight_percentiles/index.html.erb" do
  before(:each) do
    assign(:weight_percentiles, [
      stub_model(WeightPercentile,
        :month => 1,
        :l => 1.2,
        :mean => 1.52,
        :sample_sd => 1.53,
        :p01 => 1.54,
        :p1 => 1.55,
        :p3 => 1.56,
        :p5 => 1.57,
        :p10 => 1.58,
        :p15 => 1.59,
        :p25 => 1.510,
        :p50 => 1.511,
        :p75 => 1.512,
        :p85 => 1.513,
        :p90 => 1.514,
        :p95 => 1.515,
        :p97 => 1.516,
        :p99 => 1.517,
        :p999 => 1.518,
        :gender => "Gender"
      ),
      stub_model(WeightPercentile,
        :month => 1,
        :l => 1.2,
        :mean => 1.52,
        :sample_sd => 1.53,
        :p01 => 1.54,
        :p1 => 1.55,
        :p3 => 1.56,
        :p5 => 1.57,
        :p10 => 1.58,
        :p15 => 1.59,
        :p25 => 1.510,
        :p50 => 1.511,
        :p75 => 1.512,
        :p85 => 1.513,
        :p90 => 1.514,
        :p95 => 1.515,
        :p97 => 1.516,
        :p99 => 1.517,
        :p999 => 1.518,
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of weight_percentiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.20.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.52.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.53.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.54.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.55.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.56.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.57.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.58.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.59.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.510.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.511.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.512.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.513.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.514.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.515.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.516.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.517.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.518.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
