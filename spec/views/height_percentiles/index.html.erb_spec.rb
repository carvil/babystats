require 'spec_helper'

describe "height_percentiles/index.html.erb" do
  before(:each) do
    assign(:height_percentiles, [
      stub_model(HeightPercentile,
        :week => 1,
        :p1 => "9.99",
        :p3 => "9.99",
        :p5 => "9.99",
        :p15 => "9.99",
        :p25 => "9.99",
        :p50 => "9.99",
        :p75 => "9.99",
        :p85 => "9.99",
        :p95 => "9.99",
        :p97 => "9.99",
        :p99 => "9.99",
        :standard_deviation => "9.99",
        :mean => "9.99",
        :sample_sd => "9.99"
      ),
      stub_model(HeightPercentile,
        :week => 1,
        :p1 => "9.99",
        :p3 => "9.99",
        :p5 => "9.99",
        :p15 => "9.99",
        :p25 => "9.99",
        :p50 => "9.99",
        :p75 => "9.99",
        :p85 => "9.99",
        :p95 => "9.99",
        :p97 => "9.99",
        :p99 => "9.99",
        :standard_deviation => "9.99",
        :mean => "9.99",
        :sample_sd => "9.99"
      )
    ])
  end

  it "renders a list of height_percentiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
