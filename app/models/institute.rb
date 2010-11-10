class Institute < ActiveRecord::Base
  validates_presence_of :name, :type

  LEVEL = ['primary','secondary','tertiary','university','graduate']
end
