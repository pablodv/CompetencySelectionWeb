class Departament < ActiveRecord::Base
  belongs_to :area
#  has_many   :sections, :dependent => :destroy
  has_many   :job_competency_profiles

  validates_presence_of :name, :area_id
  
end
