class Admin::CerimoniesController < Admin::AdminController
  # GET /cerimonies
  # GET /cerimonies.xml
  def index
    @cerimonies = Cerimony.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cerimonies }
    end
  end

  # GET /cerimonies/1
  # GET /cerimonies/1.xml
  def show
    @cerimony = Cerimony.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cerimony }
    end
  end

  # GET /cerimonies/new
  # GET /cerimonies/new.xml
  def new
    @cerimony = Cerimony.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml =>@cerimony }
    end
  end

  # GET /cerimonies/1/edit
  def edit
    @cerimony = Cerimony.find(params[:id])
  end

  # POST /cerimonies
  # POST /cerimonies.xml
  def create
    @cerimony = Cerimony.new(params[:cerimony])

    flash[:notice] = 'Cerimony was successfully created.' if @cerimony.save
    respond_with @cerimony, :location => admin_cerimonies_path
  end

  # PUT /cerimonies/1
  # PUT /cerimonies/1.xml
  def update
    @cerimony = Cerimony.find(params[:id])
    flash[:notice] = 'Cerimonies was successfully updated.' if @cerimony.update_attributes(params[:cerimony])
    respond_with @cerimonies, :location => admin_cerimonies_path
  end

  # DELETE /cerimonies/1
  # DELETE /cerimonies/1.xml
  def destroy
    @cerimony = Cerimony.find(params[:id])
    @cerimony.destroy

    respond_to do |format|
      format.html { redirect_to(admin_cerimonies_url) }
      format.xml  { head :ok }
    end
  end
end
