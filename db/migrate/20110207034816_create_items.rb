class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :evaluation_id
      t.text :question

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
