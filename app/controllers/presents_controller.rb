class PresentsController < ApplicationController
  # GET /presents
  # GET /presents.xml
  def index
    @presents = Present.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @presents }
    end
  end
end
