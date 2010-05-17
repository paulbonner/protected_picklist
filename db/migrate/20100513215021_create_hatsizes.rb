class CreateHatsizes < ActiveRecord::Migration
  def self.up
    create_table :hatsizes do |t|
      t.name :string

      t.timestamps
    end
  end

  def self.down
    drop_table :hatsizes
  end
end
