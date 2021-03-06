class Company < ActiveRecord::Base
  has_many :users
  has_many :institutes
  has_many :specialties
  has_many :vacancies
  has_many :competencies
  has_many :areas
  has_many :job_competency_profiles

  validates_uniqueness_of :name, :login
  validates_presence_of  :name
  
  has_friendly_id :name, :use_slug => true
end
