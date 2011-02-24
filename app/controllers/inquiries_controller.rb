class InquiriesController < ApplicationController
  menu_item :contact

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])

    if @inquiry.save
      flash[:notice] = 'Your messages was successfully sent.'
      redirect_to new_inquiry_path
    else
      @inquiry.save
      render :new
    end
  end

end