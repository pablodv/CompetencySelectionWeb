class Institute < ActiveRecord::Base
  belongs_to :company
  
  validates_presence_of :name, :type

  LEVEL = ['primary','secondary','tertiary','university','graduate']
end
