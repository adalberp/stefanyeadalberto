class CreatePostCategoriesPosts < ActiveRecord::Migration
  def self.up
    create_table :post_categories_posts, :id => false  do |t|
      t.references :post, :null => false
      t.references :post_category, :null => false
    end
  end

  def self.down
    drop_table :post_categories
  end
end
