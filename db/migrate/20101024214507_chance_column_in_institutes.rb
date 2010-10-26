class ChanceColumnInInstitutes < ActiveRecord::Migration
  def self.up
    change_column :institutes, :type_id, :string
    rename_column :institutes, :type_id, :type
    change_column :specialties, :type_id, :string
    rename_column :specialties, :type_id, :type
  end

  def self.down
    change_column :institutes, :type_id, :integer
    rename_column :institutes, :type, :type_id
    change_column :specialties, :type_id, :integer
    rename_column :specialties, :type, :type_id
  end
end
