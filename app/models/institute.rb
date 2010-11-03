class Institute < ActiveRecord::Base
  has_one :study
  validates_presence_of :name, :type

  LEVEL = ['primary','secondary','tertiary','university','graduate']
end
