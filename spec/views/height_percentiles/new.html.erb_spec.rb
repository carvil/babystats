require 'spec_helper'

describe "height_percentiles/new.html.erb" do
  before(:each) do
    assign(:height_percentile, stub_model(HeightPercentile,
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
    ).as_new_record)
  end

  it "renders new height_percentile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => height_percentiles_path, :method => "post" do
      assert_select "input#height_percentile_week", :name => "height_percentile[week]"
      assert_select "input#height_percentile_p1", :name => "height_percentile[p1]"
      assert_select "input#height_percentile_p3", :name => "height_percentile[p3]"
      assert_select "input#height_percentile_p5", :name => "height_percentile[p5]"
      assert_select "input#height_percentile_p15", :name => "height_percentile[p15]"
      assert_select "input#height_percentile_p25", :name => "height_percentile[p25]"
      assert_select "input#height_percentile_p50", :name => "height_percentile[p50]"
      assert_select "input#height_percentile_p75", :name => "height_percentile[p75]"
      assert_select "input#height_percentile_p85", :name => "height_percentile[p85]"
      assert_select "input#height_percentile_p95", :name => "height_percentile[p95]"
      assert_select "input#height_percentile_p97", :name => "height_percentile[p97]"
      assert_select "input#height_percentile_p99", :name => "height_percentile[p99]"
      assert_select "input#height_percentile_standard_deviation", :name => "height_percentile[standard_deviation]"
      assert_select "input#height_percentile_mean", :name => "height_percentile[mean]"
      assert_select "input#height_percentile_sample_sd", :name => "height_percentile[sample_sd]"
    end
  end
end
