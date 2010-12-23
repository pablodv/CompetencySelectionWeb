class CreateVacancies < ActiveRecord::Migration
  def self.up
    create_table :vacancies do |t|
      t.integer :company_id
      t.integer :job_id
      t.integer :area_id
      t.decimal :remuneration
      t.date :datevacancy_date
      t.text :concerns

      t.timestamps
    end
  end

  def self.down
    drop_table :vacancies
  end
end
