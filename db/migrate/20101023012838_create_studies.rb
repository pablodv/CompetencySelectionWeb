class CreateStudies < ActiveRecord::Migration
  def self.up
    create_table :studies do |t|
      t.integer :user_id
      t.integer :institute_id
      t.integer :specialty_id
      t.date :start_date
      t.date :end_date
      t.string :state
      t.integer :type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :studies
  end
end
