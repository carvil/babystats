require 'spec_helper'

describe "stats/index.html.erb" do
  before(:each) do
    assign(:stats, [
      stub_model(Stat,
        :user_id => 1,
        :baby_id => 2,
        :height => 1.5,
        :weight => 5.5,
        :age_weeks => 3
      ),
      stub_model(Stat,
        :user_id => 1,
        :baby_id => 2,
        :height => 1.5,
        :weight => 5.5,
        :age_weeks => 3
      )
    ])
  end

  it "renders a list of stats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 2.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
