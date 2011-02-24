class RemoveUrlFromComments < ActiveRecord::Migration
  def self.up
    remove_column :comments, :url
  end

  def self.down
    add_column :comments, :url
  end
end
