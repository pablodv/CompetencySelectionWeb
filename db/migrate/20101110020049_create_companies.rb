class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :login
      t.string :cached_slug
      
      t.timestamps
    end

    add_column :users, :company_id, :integer
  end

  def self.down
    drop_table :companies
    remove_column :users, :company_id
  end
end
