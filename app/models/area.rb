class Area < ActiveRecord::Base
  has_many :departaments, :dependent => :destroy
  has_many   :job_competency_profiles

  validates_presence_of :name
end
