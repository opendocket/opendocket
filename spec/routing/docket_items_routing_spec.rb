require "spec_helper"

describe DocketItemsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/docket_items" }.should route_to(:controller => "docket_items", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/docket_items/new" }.should route_to(:controller => "docket_items", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/docket_items/1" }.should route_to(:controller => "docket_items", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/docket_items/1/edit" }.should route_to(:controller => "docket_items", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/docket_items" }.should route_to(:controller => "docket_items", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/docket_items/1" }.should route_to(:controller => "docket_items", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/docket_items/1" }.should route_to(:controller => "docket_items", :action => "destroy", :id => "1")
    end

  end
end
