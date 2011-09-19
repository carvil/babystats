require "spec_helper"

describe WeightPercentilesController do
  describe "routing" do

    it "routes to #index" do
      get("/weight_percentiles").should route_to("weight_percentiles#index")
    end

    it "routes to #new" do
      get("/weight_percentiles/new").should route_to("weight_percentiles#new")
    end

    it "routes to #show" do
      get("/weight_percentiles/1").should route_to("weight_percentiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weight_percentiles/1/edit").should route_to("weight_percentiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weight_percentiles").should route_to("weight_percentiles#create")
    end

    it "routes to #update" do
      put("/weight_percentiles/1").should route_to("weight_percentiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weight_percentiles/1").should route_to("weight_percentiles#destroy", :id => "1")
    end

  end
end
