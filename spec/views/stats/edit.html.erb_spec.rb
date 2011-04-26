require 'spec_helper'

describe "stats/edit.html.erb" do
  before(:each) do
    @stat = assign(:stat, stub_model(Stat,
      :user_id => 1,
      :baby_id => 1,
      :height => 1.5,
      :weight => 1.5,
      :age_weeks => 1
    ))
  end

  it "renders the edit stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stats_path(@stat), :method => "post" do
      assert_select "input#stat_user_id", :name => "stat[user_id]"
      assert_select "input#stat_baby_id", :name => "stat[baby_id]"
      assert_select "input#stat_height", :name => "stat[height]"
      assert_select "input#stat_weight", :name => "stat[weight]"
      assert_select "input#stat_age_weeks", :name => "stat[age_weeks]"
    end
  end
end
