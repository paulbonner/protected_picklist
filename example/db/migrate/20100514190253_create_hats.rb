class CreateHats < ActiveRecord::Migration
  def self.up
    create_table :hats do |t|
      t.integer :hatsize_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :hats
  end
end
