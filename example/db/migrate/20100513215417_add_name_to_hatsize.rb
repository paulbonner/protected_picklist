class AddNameToHatsize < ActiveRecord::Migration
  def self.up
    add_column :hatsizes, :name, :string
  end

  def self.down
    remove_column :hatsizes, :name
  end
end
