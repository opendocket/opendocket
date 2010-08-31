require 'spec_helper'

describe "docket_items/edit.html.haml" do
  before(:each) do
    @docket_item = assign(:docket_item, stub_model(DocketItem,
      :new_record? => false
    ))
  end

  it "renders the edit docket_item form" do
    render

    rendered.should have_selector("form", :action => docket_item_path(@docket_item), :method => "post") do |form|
    end
  end
end
