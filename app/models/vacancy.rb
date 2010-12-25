class Vacancy < ActiveRecord::Base
  belongs_to :company

  validates_presence_of :area, :job, :remuneration
end
