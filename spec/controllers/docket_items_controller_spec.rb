require 'spec_helper'

describe DocketItemsController do

  def mock_docket_item(stubs={})
    @mock_docket_item ||= mock_model(DocketItem, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all docket_items as @docket_items" do
      DocketItem.stub(:all) { [mock_docket_item] }
      get :index
      assigns(:docket_items).should eq([mock_docket_item])
    end
  end

  describe "GET show" do
    it "assigns the requested docket_item as @docket_item" do
      DocketItem.stub(:find).with("37") { mock_docket_item }
      get :show, :id => "37"
      assigns(:docket_item).should be(mock_docket_item)
    end
  end

  describe "GET new" do
    it "assigns a new docket_item as @docket_item" do
      DocketItem.stub(:new) { mock_docket_item }
      get :new
      assigns(:docket_item).should be(mock_docket_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested docket_item as @docket_item" do
      DocketItem.stub(:find).with("37") { mock_docket_item }
      get :edit, :id => "37"
      assigns(:docket_item).should be(mock_docket_item)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created docket_item as @docket_item" do
        DocketItem.stub(:new).with({'these' => 'params'}) { mock_docket_item(:save => true) }
        post :create, :docket_item => {'these' => 'params'}
        assigns(:docket_item).should be(mock_docket_item)
      end

      it "redirects to the created docket_item" do
        DocketItem.stub(:new) { mock_docket_item(:save => true) }
        post :create, :docket_item => {}
        response.should redirect_to(docket_item_url(mock_docket_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved docket_item as @docket_item" do
        DocketItem.stub(:new).with({'these' => 'params'}) { mock_docket_item(:save => false) }
        post :create, :docket_item => {'these' => 'params'}
        assigns(:docket_item).should be(mock_docket_item)
      end

      it "re-renders the 'new' template" do
        DocketItem.stub(:new) { mock_docket_item(:save => false) }
        post :create, :docket_item => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested docket_item" do
        DocketItem.should_receive(:find).with("37") { mock_docket_item }
        mock_docket_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :docket_item => {'these' => 'params'}
      end

      it "assigns the requested docket_item as @docket_item" do
        DocketItem.stub(:find) { mock_docket_item(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:docket_item).should be(mock_docket_item)
      end

      it "redirects to the docket_item" do
        DocketItem.stub(:find) { mock_docket_item(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(docket_item_url(mock_docket_item))
      end
    end

    describe "with invalid params" do
      it "assigns the docket_item as @docket_item" do
        DocketItem.stub(:find) { mock_docket_item(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:docket_item).should be(mock_docket_item)
      end

      it "re-renders the 'edit' template" do
        DocketItem.stub(:find) { mock_docket_item(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested docket_item" do
      DocketItem.should_receive(:find).with("37") { mock_docket_item }
      mock_docket_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the docket_items list" do
      DocketItem.stub(:find) { mock_docket_item }
      delete :destroy, :id => "1"
      response.should redirect_to(docket_items_url)
    end
  end

end
