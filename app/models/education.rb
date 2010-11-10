class Education < ActiveRecord::Base
  belongs_to :user
  belongs_to :specialty
  belongs_to :institute

  validates_presence_of :institute_id, :specialty_id, :date_from, :type_education

  named_scope :type, lambda { |type| {:conditions => [ 'type_education =?', type ] } }
  named_scope :user, lambda { |user| {:conditions => [ 'user_id =?', user ] } }

  EDUCATION_TYPE = ['secondary', 'tertiary', 'university', 'graduate']
end
