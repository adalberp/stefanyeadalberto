require "spec_helper"

describe CerimoniesController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/cerimonies" }.should route_to(:controller => "cerimonies", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/cerimonies/new" }.should route_to(:controller => "cerimonies", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/cerimonies/1" }.should route_to(:controller => "cerimonies", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/cerimonies/1/edit" }.should route_to(:controller => "cerimonies", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/cerimonies" }.should route_to(:controller => "cerimonies", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/cerimonies/1" }.should route_to(:controller => "cerimonies", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/cerimonies/1" }.should route_to(:controller => "cerimonies", :action => "destroy", :id => "1")
    end

  end
end
