class CreateEducations < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.integer :user_id
      t.integer :institute_id
      t.integer :specialty_id
      t.date :date_from
      t.date :date_until
      t.text :comment
      t.string :type_education
      t.timestamps
    end
  end

  def self.down
    drop_table :educations
  end
end
