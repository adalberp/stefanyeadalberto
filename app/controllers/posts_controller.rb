class PostsController < ApplicationController
  before_filter :load_categories
  menu_item :posts

  def index
    @posts = Post.scoped
    @posts = Post.search(params[:search]) if params[:search].present?
    @posts = @category.posts if @category.present?
    @posts = @posts.published
    @posts = @posts.paginate(:page => params[:page])

    respond_with @posts do |format|
      format.atom
    end
  end

  def show
    @post = Post.published.find(params[:id])
    respond_with @post
  end

protected
  def load_categories
    @categories = PostCategory.all
    @category   = PostCategory.find(params[:category_id]) if params[:category_id]
  end
end