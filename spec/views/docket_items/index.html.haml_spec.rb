require 'spec_helper'

describe "docket_items/index.html.haml" do
  before(:each) do
    assign(:docket_items, [
      stub_model(DocketItem),
      stub_model(DocketItem)
    ])
  end

  it "renders a list of docket_items" do
    render
  end
end
