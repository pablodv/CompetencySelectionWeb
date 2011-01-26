class CreateDepartaments < ActiveRecord::Migration
  def self.up
    create_table :departaments do |t|
      t.string :name
      t.integer :area_id

      t.timestamps
    end
  end

  def self.down
    drop_table :departaments
  end
end
