class AddColumnValueOnQuestion < ActiveRecord::Migration
  def self.up
  	add_column :questions, :value_id, :integer
  end

  def self.down
  	remove_column :questions, :value_id
  end
end
