class User < ApplicationRecord
  belongs_to :family_goal
  before_save :normalize

  # NORMALIZE_ATTRS = %w(family_name area world position)

  def self.create_with_family_association params
    family_goal = find_family_goal params
    User.create!(name: params['name'], family_goal_id: family_goal.id)
  end

  def self.find_family_goal params
    FamilyGoal.find_by!({
      area: params['area'], world: params['world'], position: params['position']
    })
  end

  private

  def normalize
    byebug
    # self.
  end

end
