class CreateVacancies < ActiveRecord::Migration
  def self.up
    create_table :vacancies do |t|
      t.integer :company_id
      t.string  :job
      t.string  :area
      t.decimal :remuneration
      t.date :vacancy_date
      t.text :concerns

      t.timestamps
    end
  end

  def self.down
    drop_table :vacancies
  end
end
