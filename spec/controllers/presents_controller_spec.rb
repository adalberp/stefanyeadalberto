require 'spec_helper'

describe PresentsController do

  def mock_present(stubs={})
    @mock_present ||= mock_model(Present, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all presents as @presents" do
      Present.stub(:all) { [mock_present] }
      get :index
      assigns(:presents).should eq([mock_present])
    end
  end

  describe "GET show" do
    it "assigns the requested present as @present" do
      Present.stub(:find).with("37") { mock_present }
      get :show, :id => "37"
      assigns(:present).should be(mock_present)
    end
  end

  describe "GET new" do
    it "assigns a new present as @present" do
      Present.stub(:new) { mock_present }
      get :new
      assigns(:present).should be(mock_present)
    end
  end

  describe "GET edit" do
    it "assigns the requested present as @present" do
      Present.stub(:find).with("37") { mock_present }
      get :edit, :id => "37"
      assigns(:present).should be(mock_present)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created present as @present" do
        Present.stub(:new).with({'these' => 'params'}) { mock_present(:save => true) }
        post :create, :present => {'these' => 'params'}
        assigns(:present).should be(mock_present)
      end

      it "redirects to the created present" do
        Present.stub(:new) { mock_present(:save => true) }
        post :create, :present => {}
        response.should redirect_to(present_url(mock_present))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved present as @present" do
        Present.stub(:new).with({'these' => 'params'}) { mock_present(:save => false) }
        post :create, :present => {'these' => 'params'}
        assigns(:present).should be(mock_present)
      end

      it "re-renders the 'new' template" do
        Present.stub(:new) { mock_present(:save => false) }
        post :create, :present => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested present" do
        Present.should_receive(:find).with("37") { mock_present }
        mock_present.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :present => {'these' => 'params'}
      end

      it "assigns the requested present as @present" do
        Present.stub(:find) { mock_present(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:present).should be(mock_present)
      end

      it "redirects to the present" do
        Present.stub(:find) { mock_present(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(present_url(mock_present))
      end
    end

    describe "with invalid params" do
      it "assigns the present as @present" do
        Present.stub(:find) { mock_present(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:present).should be(mock_present)
      end

      it "re-renders the 'edit' template" do
        Present.stub(:find) { mock_present(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested present" do
      Present.should_receive(:find).with("37") { mock_present }
      mock_present.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the presents list" do
      Present.stub(:find) { mock_present }
      delete :destroy, :id => "1"
      response.should redirect_to(presents_url)
    end
  end

end
