require 'spec_helper'

describe "weight_percentiles/edit.html.erb" do
  before(:each) do
    @weight_percentile = assign(:weight_percentile, stub_model(WeightPercentile,
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
      :gender => "MyString"
    ))
  end

  it "renders the edit weight_percentile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weight_percentiles_path(@weight_percentile), :method => "post" do
      assert_select "input#weight_percentile_month", :name => "weight_percentile[month]"
      assert_select "input#weight_percentile_l", :name => "weight_percentile[l]"
      assert_select "input#weight_percentile_mean", :name => "weight_percentile[mean]"
      assert_select "input#weight_percentile_sample_sd", :name => "weight_percentile[sample_sd]"
      assert_select "input#weight_percentile_p01", :name => "weight_percentile[p01]"
      assert_select "input#weight_percentile_p1", :name => "weight_percentile[p1]"
      assert_select "input#weight_percentile_p3", :name => "weight_percentile[p3]"
      assert_select "input#weight_percentile_p5", :name => "weight_percentile[p5]"
      assert_select "input#weight_percentile_p10", :name => "weight_percentile[p10]"
      assert_select "input#weight_percentile_p15", :name => "weight_percentile[p15]"
      assert_select "input#weight_percentile_p25", :name => "weight_percentile[p25]"
      assert_select "input#weight_percentile_p50", :name => "weight_percentile[p50]"
      assert_select "input#weight_percentile_p75", :name => "weight_percentile[p75]"
      assert_select "input#weight_percentile_p85", :name => "weight_percentile[p85]"
      assert_select "input#weight_percentile_p90", :name => "weight_percentile[p90]"
      assert_select "input#weight_percentile_p95", :name => "weight_percentile[p95]"
      assert_select "input#weight_percentile_p97", :name => "weight_percentile[p97]"
      assert_select "input#weight_percentile_p99", :name => "weight_percentile[p99]"
      assert_select "input#weight_percentile_p999", :name => "weight_percentile[p999]"
      assert_select "input#weight_percentile_gender", :name => "weight_percentile[gender]"
    end
  end
end
