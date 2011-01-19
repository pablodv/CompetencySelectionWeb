class AddColumnTypeToCompetencies < ActiveRecord::Migration
  def self.up
    add_column :competencies, :type, :string
    rename_column :competencies, :description, :definition
  end

  def self.down
    remove_column :competencies, :type
    rename_column :competencies, :definition, :description
  end
end
