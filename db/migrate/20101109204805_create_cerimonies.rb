class CreateCerimonies < ActiveRecord::Migration
  def self.up
    create_table :cerimonies do |t|
      t.string :local
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :cerimonies
  end
end
