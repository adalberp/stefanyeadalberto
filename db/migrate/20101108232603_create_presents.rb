class CreatePresents < ActiveRecord::Migration
  def self.up
    create_table :presents do |t|
      t.string :store
      t.text :address
      t.string :url
      t.string :contact

      t.timestamps
    end
  end

  def self.down
    drop_table :presents
  end
end
