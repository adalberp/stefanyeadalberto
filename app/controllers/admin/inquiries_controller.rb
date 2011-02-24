class Admin::InquiriesController < Admin::AdminController
  menu_item :inquiries

  def index
    @open = Inquiry.open
    @closed = Inquiry.closed
  end

  def show
    @inquiry = Inquiry.find(params[:id])
    respond_with @inquiry
  end

  def update
    @inquiry = Inquiry.find(params[:id])
    flash[:notice] = 'Category was successfully updated.' if @inquiry.update_attributes(params[:inquiry])
    respond_with @inquiry, :location => admin_inquiries_path
  end

  def destroy
    @inquiry = Inquiry.find(params[:id])
    @inquiry.destroy
    respond_with @inquiry, :location => admin_inquiries_path
  end
end
