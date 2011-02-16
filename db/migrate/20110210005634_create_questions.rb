class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :question_dictionary_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
