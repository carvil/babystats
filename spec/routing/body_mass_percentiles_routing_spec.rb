require "spec_helper"

describe BodyMassPercentilesController do
  describe "routing" do

    it "routes to #index" do
      get("/body_mass_percentiles").should route_to("body_mass_percentiles#index")
    end

    it "routes to #new" do
      get("/body_mass_percentiles/new").should route_to("body_mass_percentiles#new")
    end

    it "routes to #show" do
      get("/body_mass_percentiles/1").should route_to("body_mass_percentiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/body_mass_percentiles/1/edit").should route_to("body_mass_percentiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/body_mass_percentiles").should route_to("body_mass_percentiles#create")
    end

    it "routes to #update" do
      put("/body_mass_percentiles/1").should route_to("body_mass_percentiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/body_mass_percentiles/1").should route_to("body_mass_percentiles#destroy", :id => "1")
    end

  end
end
