require 'spec_helper'

describe "docket_items/new.html.haml" do
  before(:each) do
    assign(:docket_item, stub_model(DocketItem,
      :new_record? => true
    ))
  end

  it "renders new docket_item form" do
    render

    rendered.should have_selector("form", :action => docket_items_path, :method => "post") do |form|
    end
  end
end
