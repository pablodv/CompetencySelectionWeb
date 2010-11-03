class ChangeTypeOnSpecialty < ActiveRecord::Migration
  def self.up
    add_column :specialties, :level, :string    
  end

  def self.down
    remove_column :specialties, :level    
  end
end
