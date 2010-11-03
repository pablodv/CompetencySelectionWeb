class ChangeTypeOnInstitute < ActiveRecord::Migration
  def self.up
    rename_column :institutes, :type, :level
  end

  def self.down
    rename_column :institutes, :level, :type
  end
end
