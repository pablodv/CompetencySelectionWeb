class Value < ActiveRecord::Base
  has_many :competencies

  validates_presence_of :name, :description
  validates_uniqueness_of :name
end
