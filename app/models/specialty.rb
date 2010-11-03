class Specialty < ActiveRecord::Base
  has_one :study
  validates_presence_of :name, :level
end
