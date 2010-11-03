class Study < ActiveRecord::Base
  belongs_to :user
  belongs_to :institute
  belongs_to :specialty

  validates_presence_of :institute_id, :specialty_id, :start_date
  
end
