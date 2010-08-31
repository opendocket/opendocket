require 'spec_helper'

describe "docket_items/show.html.haml" do
  before(:each) do
    @docket_item = assign(:docket_item, stub_model(DocketItem))
  end

  it "renders attributes in <p>" do
    render
  end
end
