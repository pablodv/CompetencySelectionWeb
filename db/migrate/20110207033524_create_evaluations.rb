class CreateEvaluations < ActiveRecord::Migration
  def self.up
    create_table :evaluations do |t|
      t.integer :competency_id

      t.timestamps
    end
  end

  def self.down
    drop_table :evaluations
  end
end
