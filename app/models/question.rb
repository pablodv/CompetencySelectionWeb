class Question < ActiveRecord::Base
  belongs_to :competency
  belongs_to :value

  validates_presence_of :description
end
