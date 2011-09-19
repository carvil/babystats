require 'spec_helper'

describe "head_circumference_percentiles/new.html.erb" do
  before(:each) do
    assign(:head_circumference_percentile, stub_model(HeadCircumferencePercentile,
      :month => 1,
      :mean => 1.5,
      :sample_sd => 1.5,
      :standard_deviation => 1.5,
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
    ).as_new_record)
  end

  it "renders new head_circumference_percentile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => head_circumference_percentiles_path, :method => "post" do
      assert_select "input#head_circumference_percentile_month", :name => "head_circumference_percentile[month]"
      assert_select "input#head_circumference_percentile_mean", :name => "head_circumference_percentile[mean]"
      assert_select "input#head_circumference_percentile_sample_sd", :name => "head_circumference_percentile[sample_sd]"
      assert_select "input#head_circumference_percentile_standard_deviation", :name => "head_circumference_percentile[standard_deviation]"
      assert_select "input#head_circumference_percentile_p01", :name => "head_circumference_percentile[p01]"
      assert_select "input#head_circumference_percentile_p1", :name => "head_circumference_percentile[p1]"
      assert_select "input#head_circumference_percentile_p3", :name => "head_circumference_percentile[p3]"
      assert_select "input#head_circumference_percentile_p5", :name => "head_circumference_percentile[p5]"
      assert_select "input#head_circumference_percentile_p10", :name => "head_circumference_percentile[p10]"
      assert_select "input#head_circumference_percentile_p15", :name => "head_circumference_percentile[p15]"
      assert_select "input#head_circumference_percentile_p25", :name => "head_circumference_percentile[p25]"
      assert_select "input#head_circumference_percentile_p50", :name => "head_circumference_percentile[p50]"
      assert_select "input#head_circumference_percentile_p75", :name => "head_circumference_percentile[p75]"
      assert_select "input#head_circumference_percentile_p85", :name => "head_circumference_percentile[p85]"
      assert_select "input#head_circumference_percentile_p90", :name => "head_circumference_percentile[p90]"
      assert_select "input#head_circumference_percentile_p95", :name => "head_circumference_percentile[p95]"
      assert_select "input#head_circumference_percentile_p97", :name => "head_circumference_percentile[p97]"
      assert_select "input#head_circumference_percentile_p99", :name => "head_circumference_percentile[p99]"
      assert_select "input#head_circumference_percentile_p999", :name => "head_circumference_percentile[p999]"
      assert_select "input#head_circumference_percentile_gender", :name => "head_circumference_percentile[gender]"
      assert_select "input#head_circumference_percentile_measure_unit", :name => "head_circumference_percentile[measure_unit]"
    end
  end
end
