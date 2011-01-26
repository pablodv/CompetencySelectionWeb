class Area < ActiveRecord::Base
  has_many :departaments, :dependent => :destroy

  validates_presence_of :name
end
