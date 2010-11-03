class ChangeLevelOnStudy < ActiveRecord::Migration
  def self.up
    rename_column :studies, :level, :type
  end

  def self.down
    rename_column :studies, :type, :level
  end
end
