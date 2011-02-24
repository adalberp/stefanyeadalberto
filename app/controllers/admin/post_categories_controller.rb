class Admin::PostCategoriesController < Admin::AdminController
  menu_item :posts
  
  def index
    @categories = PostCategory.all
    respond_with @categories
  end

  def new
    @category = PostCategory.new
    respond_with @category
  end

  def edit
    @category = PostCategory.find(params[:id])
  end

  def create
    @category = PostCategory.new(params[:post_category])
    flash[:notice] = 'Category was successfully created.' if @category.save
    respond_with @post, :location => admin_post_categories_path
  end

  def update
    @category = PostCategory.find(params[:id])
    flash[:notice] = 'Category was successfully updated.' if @category.update_attributes(params[:post_category])
    respond_with @category, :location => admin_post_categories_path
  end

  def destroy
    @category = PostCategory.find(params[:id])
    @category.destroy
    respond_with @category, :location => admin_post_categories_path
  end
end
