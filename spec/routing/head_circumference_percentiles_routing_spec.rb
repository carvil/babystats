require "spec_helper"

describe HeadCircumferencePercentilesController do
  describe "routing" do

    it "routes to #index" do
      get("/head_circumference_percentiles").should route_to("head_circumference_percentiles#index")
    end

    it "routes to #new" do
      get("/head_circumference_percentiles/new").should route_to("head_circumference_percentiles#new")
    end

    it "routes to #show" do
      get("/head_circumference_percentiles/1").should route_to("head_circumference_percentiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/head_circumference_percentiles/1/edit").should route_to("head_circumference_percentiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/head_circumference_percentiles").should route_to("head_circumference_percentiles#create")
    end

    it "routes to #update" do
      put("/head_circumference_percentiles/1").should route_to("head_circumference_percentiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/head_circumference_percentiles/1").should route_to("head_circumference_percentiles#destroy", :id => "1")
    end

  end
end
