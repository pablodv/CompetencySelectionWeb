class AddColumnCompanyId < ActiveRecord::Migration
  def self.up
    add_column :institutes, :company_id, :integer
    add_column :specialties, :company_id, :integer
  end

  def self.down
    remove_column :institutes, :company_id
    remove_column :specialties, :company_id
  end
end
