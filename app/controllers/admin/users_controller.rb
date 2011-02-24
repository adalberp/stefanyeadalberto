class Admin::UsersController < Admin::AdminController
  menu_item :users

  def index
    @users = User.all
    respond_with @users
  end

  def new
    @user = User.new
    respond_with @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    flash[:notice] = 'User was successfully created.' if @user.save
    respond_with @user, :location => [:admin, :users]
  end

  def update
    @user = User.find(params[:id])
    flash[:notice] = 'User was successfully updated.' if @user.update_attributes(params[:user])
    respond_with @user, :location => [:admin, :users]
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with @user, :location => [:admin, :users]
  end

end
