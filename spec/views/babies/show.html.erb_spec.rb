require 'spec_helper'

describe "babies/show.html.erb" do
  before(:each) do
    @baby = assign(:baby, stub_model(Baby,
      :user_id => 1,
      :gender => "Gender",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
