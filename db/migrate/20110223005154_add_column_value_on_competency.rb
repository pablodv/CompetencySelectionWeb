class AddColumnValueOnCompetency < ActiveRecord::Migration
  def self.up
  	add_column    :competencies, :value_id, :integer
  	remove_column :competencies, :weighted
  	rename_column :competencies, :type, :kind
  	remove_column :behaviors, :weighted
  end

  def self.down
  	add_column    :behaviors, :weighted, :decimal
  	rename_column :competencies, :kind, :type
  	add_column    :competencies, :weighted, :decimal
  	remove_column :competencies, :value_id
  end
end
