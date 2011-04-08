require "spec_helper"

describe BabiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/babies" }.should route_to(:controller => "babies", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/babies/new" }.should route_to(:controller => "babies", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/babies/1" }.should route_to(:controller => "babies", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/babies/1/edit" }.should route_to(:controller => "babies", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/babies" }.should route_to(:controller => "babies", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/babies/1" }.should route_to(:controller => "babies", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/babies/1" }.should route_to(:controller => "babies", :action => "destroy", :id => "1")
    end

  end
end
