require "spec_helper"

describe HeightPercentilesController do
  describe "routing" do

    it "routes to #index" do
      get("/height_percentiles").should route_to("height_percentiles#index")
    end

    it "routes to #new" do
      get("/height_percentiles/new").should route_to("height_percentiles#new")
    end

    it "routes to #show" do
      get("/height_percentiles/1").should route_to("height_percentiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/height_percentiles/1/edit").should route_to("height_percentiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/height_percentiles").should route_to("height_percentiles#create")
    end

    it "routes to #update" do
      put("/height_percentiles/1").should route_to("height_percentiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/height_percentiles/1").should route_to("height_percentiles#destroy", :id => "1")
    end

  end
end
