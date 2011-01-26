class Departament < ActiveRecord::Base
  belongs_to :area
  has_many   :sections, :dependent => :destroy

  validates_presence_of :name, :area_id
  
end
