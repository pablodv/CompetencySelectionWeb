class RenameColumnDateFromOnJobs < ActiveRecord::Migration
  def self.up
    rename_column :jobs, :start_date, :date_from
    rename_column :jobs, :end_date, :date_until
  end

  def self.down
    rename_column :jobs, :date_from, :start_date
    rename_column :jobs, :date_until, :end_date
  end
end
