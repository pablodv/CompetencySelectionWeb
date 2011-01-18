class CreateSpecialties < ActiveRecord::Migration
  def self.up
    create_table :specialties do |t|
      t.string :name
      t.integer :institute_id

      t.timestamps
    end
  end

  def self.down
    drop_table :specialties
  end
end
