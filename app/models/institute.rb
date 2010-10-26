class Institute < ActiveRecord::Base
  has_many :specialties
  validates_presence_of :name, :type

  NIVEL = ['primary','secondary','tertiary','university','graduate']
end
