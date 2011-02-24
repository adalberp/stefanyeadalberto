class AddDraftAndPermalinkToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :draft, :boolean, :default => true
    add_column :posts, :permalink, :string
  end

  def self.down
    remove_column :posts, :permalink
    remove_column :posts, :draft
  end
end
