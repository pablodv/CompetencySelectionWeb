class CreateInstitutes < ActiveRecord::Migration
  def self.up
    create_table :institutes do |t|
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :institutes
  end
end
