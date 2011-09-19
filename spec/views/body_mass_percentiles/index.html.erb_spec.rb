require 'spec_helper'

describe "body_mass_percentiles/index.html.erb" do
  before(:each) do
    assign(:body_mass_percentiles, [
      stub_model(BodyMassPercentile,
        :month => 1,
        :l => 1.5,
        :mean => 1.5,
        :sample_sd => 1.5,
        :p01 => 1.5,
        :p1 => 1.5,
        :p3 => 1.5,
        :p5 => 1.5,
        :p10 => 1.5,
        :p15 => 1.5,
        :p25 => 1.5,
        :p50 => 1.5,
        :p75 => 1.5,
        :p85 => 1.5,
        :p90 => 1.5,
        :p95 => 1.5,
        :p97 => 1.5,
        :p99 => 1.5,
        :p999 => 1.5,
        :gender => "Gender",
        :measure_unit => "Measure Unit"
      ),
      stub_model(BodyMassPercentile,
        :month => 1,
        :l => 1.5,
        :mean => 1.5,
        :sample_sd => 1.5,
        :p01 => 1.5,
        :p1 => 1.5,
        :p3 => 1.5,
        :p5 => 1.5,
        :p10 => 1.5,
        :p15 => 1.5,
        :p25 => 1.5,
        :p50 => 1.5,
        :p75 => 1.5,
        :p85 => 1.5,
        :p90 => 1.5,
        :p95 => 1.5,
        :p97 => 1.5,
        :p99 => 1.5,
        :p999 => 1.5,
        :gender => "Gender",
        :measure_unit => "Measure Unit"
      )
    ])
  end

  it "renders a list of body_mass_percentiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Measure Unit".to_s, :count => 2
  end
end
