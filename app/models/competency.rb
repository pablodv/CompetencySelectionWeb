class Competency < ActiveRecord::Base
  has_many :behaviors
  has_many :questions
  belongs_to :company
  belongs_to :value
  has_and_belongs_to_many :job_competency_profiles

  validates_presence_of   :name, :definition
  validates_uniqueness_of :name

end
