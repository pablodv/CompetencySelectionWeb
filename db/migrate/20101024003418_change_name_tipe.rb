class ChangeNameTipe < ActiveRecord::Migration
  def self.up
    rename_table :tipes, :types
  end

  def self.down
    rename_table :tipes, :types
  end
end
