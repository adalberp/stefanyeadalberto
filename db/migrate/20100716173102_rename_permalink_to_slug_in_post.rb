class RenamePermalinkToSlugInPost < ActiveRecord::Migration
  def self.up
    rename_column :posts, :permalink, :slug
  end

  def self.down
    rename_column :posts, :slug, :permalink
  end
end
