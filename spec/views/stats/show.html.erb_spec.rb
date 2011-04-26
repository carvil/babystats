require 'spec_helper'

describe "stats/show.html.erb" do
  before(:each) do
    @stat = assign(:stat, stub_model(Stat,
      :user_id => 1,
      :baby_id => 1,
      :height => 1.5,
      :weight => 1.5,
      :age_weeks => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
