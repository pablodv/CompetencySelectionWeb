class Value < ActiveRecord::Base
  has_many :competencies
  has_many :questions

  validates_presence_of :name, :description
  validates_uniqueness_of :name
end
