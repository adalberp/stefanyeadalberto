class CreatePostCategories < ActiveRecord::Migration
  def self.up
    create_table :post_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :post_categories
  end
end
