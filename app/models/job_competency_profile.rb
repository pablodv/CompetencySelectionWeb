class JobCompetencyProfile < ActiveRecord::Base
  has_and_belongs_to_many  :competencies
  belongs_to :area
  belongs_to :departament

  attr_accessible :name, :area_id, :departament_id, :competency_ids

  validates_presence_of   :name, :area_id
  validates_uniqueness_of :name

end
