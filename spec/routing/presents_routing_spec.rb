require "spec_helper"

describe PresentsController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/presents" }.should route_to(:controller => "presents", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/presents/new" }.should route_to(:controller => "presents", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/presents/1" }.should route_to(:controller => "presents", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/presents/1/edit" }.should route_to(:controller => "presents", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/presents" }.should route_to(:controller => "presents", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/presents/1" }.should route_to(:controller => "presents", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/presents/1" }.should route_to(:controller => "presents", :action => "destroy", :id => "1")
    end

  end
end
