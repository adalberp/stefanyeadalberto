class Admin::AssetsController < Admin::AdminController
  menu_item :assets

  def index
    @assets = Asset.paginate(:page => params[:page], :per_page => 10)
    respond_with @assets
  end

  def new
    @asset = Asset.new
    respond_with @asset
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def show
    @asset = Asset.find(params[:id])
    respond_with @asset
  end

  def create
    @asset = Asset.new(params[:asset])
    flash[:notice] = 'Asset was successfully created.' if @asset.save
    respond_with @asset, :location => [:admin, @asset]
  end

  def update
    @asset = Asset.find(params[:id])
    flash[:notice] = 'Asset was successfully updated.' if @asset.update_attributes(params[:asset])
    respond_with @asset, :location => [:admin, @asset]
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    respond_with @asset, :location => admin_assets_path
  end
end
