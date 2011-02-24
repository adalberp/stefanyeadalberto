class CreateInquiries < ActiveRecord::Migration
  def self.up
    create_table :inquiries do |t|
      t.string  :email
      t.string  :name
      t.text    :message
      t.string  :subject
      t.boolean :open, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :inquiries
  end
end