require 'spec_helper'

describe "babies/index.html.erb" do
  before(:each) do
    assign(:babies, [
      stub_model(Baby,
        :user_id => 1,
        :gender => "Gender",
        :name => "Name"
      ),
      stub_model(Baby,
        :user_id => 1,
        :gender => "Gender",
        :name => "Name"
      )
    ])
  end

  it "renders a list of babies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
