require 'spec_helper'

describe "body_mass_percentiles/edit.html.erb" do
  before(:each) do
    @body_mass_percentile = assign(:body_mass_percentile, stub_model(BodyMassPercentile,
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
      :gender => "MyString",
      :measure_unit => "MyString"
    ))
  end

  it "renders the edit body_mass_percentile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => body_mass_percentiles_path(@body_mass_percentile), :method => "post" do
      assert_select "input#body_mass_percentile_month", :name => "body_mass_percentile[month]"
      assert_select "input#body_mass_percentile_l", :name => "body_mass_percentile[l]"
      assert_select "input#body_mass_percentile_mean", :name => "body_mass_percentile[mean]"
      assert_select "input#body_mass_percentile_sample_sd", :name => "body_mass_percentile[sample_sd]"
      assert_select "input#body_mass_percentile_p01", :name => "body_mass_percentile[p01]"
      assert_select "input#body_mass_percentile_p1", :name => "body_mass_percentile[p1]"
      assert_select "input#body_mass_percentile_p3", :name => "body_mass_percentile[p3]"
      assert_select "input#body_mass_percentile_p5", :name => "body_mass_percentile[p5]"
      assert_select "input#body_mass_percentile_p10", :name => "body_mass_percentile[p10]"
      assert_select "input#body_mass_percentile_p15", :name => "body_mass_percentile[p15]"
      assert_select "input#body_mass_percentile_p25", :name => "body_mass_percentile[p25]"
      assert_select "input#body_mass_percentile_p50", :name => "body_mass_percentile[p50]"
      assert_select "input#body_mass_percentile_p75", :name => "body_mass_percentile[p75]"
      assert_select "input#body_mass_percentile_p85", :name => "body_mass_percentile[p85]"
      assert_select "input#body_mass_percentile_p90", :name => "body_mass_percentile[p90]"
      assert_select "input#body_mass_percentile_p95", :name => "body_mass_percentile[p95]"
      assert_select "input#body_mass_percentile_p97", :name => "body_mass_percentile[p97]"
      assert_select "input#body_mass_percentile_p99", :name => "body_mass_percentile[p99]"
      assert_select "input#body_mass_percentile_p999", :name => "body_mass_percentile[p999]"
      assert_select "input#body_mass_percentile_gender", :name => "body_mass_percentile[gender]"
      assert_select "input#body_mass_percentile_measure_unit", :name => "body_mass_percentile[measure_unit]"
    end
  end
end
