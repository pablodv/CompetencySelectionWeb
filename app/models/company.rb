class Company < ActiveRecord::Base
  has_many :users

  validates_uniqueness_of :name, :login
  
  has_friendly_id :name, :use_slug => true
end
