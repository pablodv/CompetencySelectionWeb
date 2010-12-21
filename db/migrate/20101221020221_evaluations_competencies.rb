class EvaluationsCompetencies < ActiveRecord::Migration
  def self.up
    create_table :evaluations_competencies, :id => false do |t|
      t.column :evaluation_id, :integer
      t.column :competency_id, :integer
    end
  end

  def self.down
    drop_table :evaluations_competencies
  end
end
