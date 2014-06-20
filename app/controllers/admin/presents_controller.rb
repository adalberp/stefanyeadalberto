class Admin::PresentsController < Admin::AdminController

    # GET /presents
    # GET /presents.xml
    def index
      @presents = Present.paginate(:page => params[:page], :per_page => 10)

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @presents }
      end
    end

    # GET /presents/new
    # GET /presents/new.xml
    def new
      @present = Present.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @present }
      end
    end

    # GET /presents/1/edit
    def edit
      @present = Present.find(params[:id])
    end

    # POST /presents
    # POST /presents.xml
    def create
      @present = Present.new(params[:present])

      flash[:notice] = 'Present was successfully created.' if @present.save
      respond_with @present, :location => admin_presents_path
    end

    # PUT /presents/1
    # PUT /presents/1.xml
    def update
      @present = Present.find(params[:id])
      flash[:notice] = 'Present was successfully updated.' if @present.update_attributes(params[:present])
      respond_with @presents, :location => admin_presents_path
    end


    # DELETE /presents/1
    # DELETE /presents/1.xml
    def destroy
      @present = Present.find(params[:id])
      @present.destroy

      respond_with @present, :location => admin_presents_path
    end
end