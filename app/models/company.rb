class Company < ActiveRecord::Base
  has_many :users
  has_many :institutes
  has_many :specialties
  has_many :vacancies

  validates_uniqueness_of :name, :login
  
  has_friendly_id :name, :use_slug => true
end
