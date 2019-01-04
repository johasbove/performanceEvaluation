class FamilyGoal < ApplicationRecord
  NORMALIZE_ATTRS = %w(area world position)

  has_many :users

  private

  def normalize
    NORMALIZE_ATTRS.each do |attr|
      self.send(attr).upcase!
    end
  end
end
