require 'spec_helper'

describe CerimoniesController do

  def mock_cerimony(stubs={})
    @mock_cerimony ||= mock_model(Cerimony, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all cerimonies as @cerimonies" do
      Cerimony.stub(:all) { [mock_cerimony] }
      get :index
      assigns(:cerimonies).should eq([mock_cerimony])
    end
  end

  describe "GET show" do
    it "assigns the requested cerimony as @cerimony" do
      Cerimony.stub(:find).with("37") { mock_cerimony }
      get :show, :id => "37"
      assigns(:cerimony).should be(mock_cerimony)
    end
  end

  describe "GET new" do
    it "assigns a new cerimony as @cerimony" do
      Cerimony.stub(:new) { mock_cerimony }
      get :new
      assigns(:cerimony).should be(mock_cerimony)
    end
  end

  describe "GET edit" do
    it "assigns the requested cerimony as @cerimony" do
      Cerimony.stub(:find).with("37") { mock_cerimony }
      get :edit, :id => "37"
      assigns(:cerimony).should be(mock_cerimony)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created cerimony as @cerimony" do
        Cerimony.stub(:new).with({'these' => 'params'}) { mock_cerimony(:save => true) }
        post :create, :cerimony => {'these' => 'params'}
        assigns(:cerimony).should be(mock_cerimony)
      end

      it "redirects to the created cerimony" do
        Cerimony.stub(:new) { mock_cerimony(:save => true) }
        post :create, :cerimony => {}
        response.should redirect_to(cerimony_url(mock_cerimony))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cerimony as @cerimony" do
        Cerimony.stub(:new).with({'these' => 'params'}) { mock_cerimony(:save => false) }
        post :create, :cerimony => {'these' => 'params'}
        assigns(:cerimony).should be(mock_cerimony)
      end

      it "re-renders the 'new' template" do
        Cerimony.stub(:new) { mock_cerimony(:save => false) }
        post :create, :cerimony => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested cerimony" do
        Cerimony.should_receive(:find).with("37") { mock_cerimony }
        mock_cerimony.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cerimony => {'these' => 'params'}
      end

      it "assigns the requested cerimony as @cerimony" do
        Cerimony.stub(:find) { mock_cerimony(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:cerimony).should be(mock_cerimony)
      end

      it "redirects to the cerimony" do
        Cerimony.stub(:find) { mock_cerimony(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(cerimony_url(mock_cerimony))
      end
    end

    describe "with invalid params" do
      it "assigns the cerimony as @cerimony" do
        Cerimony.stub(:find) { mock_cerimony(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:cerimony).should be(mock_cerimony)
      end

      it "re-renders the 'edit' template" do
        Cerimony.stub(:find) { mock_cerimony(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested cerimony" do
      Cerimony.should_receive(:find).with("37") { mock_cerimony }
      mock_cerimony.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the cerimonies list" do
      Cerimony.stub(:find) { mock_cerimony }
      delete :destroy, :id => "1"
      response.should redirect_to(cerimonies_url)
    end
  end

end
