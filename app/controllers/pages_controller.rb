class PagesController < ApplicationController
  def index
    menu_item :home
      
    @posts = Post.all(:conditions => {:id => 7})
    @posts_home = Post.all
    
    @comments  = Comment.all(:limit => 3, :order => "created_at Desc")
    
  end
end
