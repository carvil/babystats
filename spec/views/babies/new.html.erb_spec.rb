require 'spec_helper'

describe "babies/new.html.erb" do
  before(:each) do
    assign(:baby, stub_model(Baby,
      :user_id => 1,
      :gender => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new baby form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => babies_path, :method => "post" do
      #assert_select "input#baby_user_id", :name => "baby[user_id]"
      #assert_select "input#baby_gender", :name => "baby[gender]"
      assert_select "input#baby_name", :name => "baby[name]"
    end
  end
end
