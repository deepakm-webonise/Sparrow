require "rails_helper"

RSpec.describe AntsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ants").to route_to("ants#index")
    end

    it "routes to #new" do
      expect(:get => "/ants/new").to route_to("ants#new")
    end

    it "routes to #show" do
      expect(:get => "/ants/1").to route_to("ants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ants/1/edit").to route_to("ants#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ants").to route_to("ants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ants/1").to route_to("ants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ants/1").to route_to("ants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ants/1").to route_to("ants#destroy", :id => "1")
    end

  end
end
