class AddHatsizeToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :hatsize_id, :integer
  end

  def self.down
    remove_column :users, :hatsize_id
  end
end
