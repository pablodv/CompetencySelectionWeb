class Section < ActiveRecord::Base
  belongs_to :departament

  validates_presence_of :name, :departament_id
end
