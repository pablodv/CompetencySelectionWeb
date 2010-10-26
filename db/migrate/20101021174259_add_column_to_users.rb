class AddColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :dni,          :integer
    add_column :users, :address,      :string
    add_column :users, :country_id,   :integer
    add_column :users, :state_id,     :string
    add_column :users, :phone,        :string
    add_column :users, :mobile_phone, :string
  end

  def self.down
    remove_column :users, :dni
    remove_column :users, :address
    remove_column :users, :country_id
    remove_column :users, :state_id
    remove_column :users, :phone
    remove_column :users, :mobile_phone
  end
end
