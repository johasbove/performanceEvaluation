class User < ApplicationRecord
  belongs_to :family_goal
  before_save :normalize

  NORMALIZE_ATTRS = %w(name)

  def self.create_with_family_association params
    family_goal = find_family_goal params
    raise ActiveRecord::RecordNotFound if family_goal.nil?
    User.create!(name: params['name'], family_goal_id: family_goal.id)
  end

  def self.find_family_goal params
    FamilyGoal.where(
      "REPLACE(area, ' ', '')     = REPLACE(?, ' ', '') and
       REPLACE(world, ' ', '')    = REPLACE(?, ' ', '') and
       REPLACE(position, ' ', '') = REPLACE(?, ' ', '')",
       params['area'].upcase, params['world'].upcase, params['position'].upcase)
      .take
  end

  private

  def normalize
    NORMALIZE_ATTRS.each do |attr|
      self.send(attr).upcase!
    end
  end
end
