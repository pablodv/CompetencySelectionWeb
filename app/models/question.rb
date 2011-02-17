class Question < ActiveRecord::Base
  belongs_to :competency

  validates_presence_of :description
end
