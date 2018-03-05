require "rails_helper"

RSpec.describe LogFilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/log_files").to route_to("log_files#index")
    end

    it "routes to #new" do
      expect(:get => "/log_files/new").to route_to("log_files#new")
    end

    it "routes to #show" do
      expect(:get => "/log_files/1").to route_to("log_files#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/log_files/1/edit").to route_to("log_files#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/log_files").to route_to("log_files#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/log_files/1").to route_to("log_files#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/log_files/1").to route_to("log_files#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/log_files/1").to route_to("log_files#destroy", :id => "1")
    end

  end
end
