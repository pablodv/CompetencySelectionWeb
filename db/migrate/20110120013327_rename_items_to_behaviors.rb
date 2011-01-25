class RenameItemsToBehaviors < ActiveRecord::Migration
  def self.up
    rename_table :items, :behaviors
  end

  def self.down
    rename_table :behaviors, :items
  end
end
