class CerimoniesController < ApplicationController
  # GET /cerimonies
  # GET /cerimonies.xml
  def index
    @cerimonies = Cerimony.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cerimonies }
    end
  end
end
