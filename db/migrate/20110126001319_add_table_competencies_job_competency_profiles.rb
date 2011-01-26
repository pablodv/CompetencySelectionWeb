class AddTableCompetenciesJobCompetencyProfiles < ActiveRecord::Migration
  def self.up
    create_table "competencies_job_competency_profile", :id => false, :force => true do |t|
      t.integer "competency_id"
      t.integer "job_competency_profile_id"
    end
  end

  def self.down
    drop_table "competencies_job_competency_profile"
  end
end
