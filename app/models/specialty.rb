class Specialty < ActiveRecord::Base
  validates_presence_of :name, :level
end
