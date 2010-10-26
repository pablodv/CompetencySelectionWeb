class AddColumnToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :gender, :string
    add_column :users, :marital_status, :string
  end

  def self.down
    remove_column :users, :gender
    remove_column :users, :marital_status
  end
end
