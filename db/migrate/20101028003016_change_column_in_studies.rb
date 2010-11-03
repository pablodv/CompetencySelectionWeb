class ChangeColumnInStudies < ActiveRecord::Migration
  def self.up
    change_column :studies, :type_id, :string
    rename_column :studies, :type_id, :level   
  end

  def self.down
    change_column :studies, :level, :integer
    rename_column :studies, :level, :type_id
  end
end
