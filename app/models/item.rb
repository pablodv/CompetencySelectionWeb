class Item < ActiveRecord::Base
  belongs_to :competency

  validates_presence_of :description, :weighted
  validate :weighted_must_be_at_least_a_cent
  validate :weighted_total

protected

  def weighted_must_be_at_least_a_cent
    errors.add(:weighted, 'should be at least 0.01' ) if weighted.nil? ||
    weighted < 0.01
  end

  def weighted_total
    total = 0 
    self.competency.items.each do |i|
      if i == self
        total = total + self.weighted
      else
        total = total + i.weighted
      end
    end
    if total > 1
      errors.add(:weighted, 'should be less than 1' )
    end
  end

end
