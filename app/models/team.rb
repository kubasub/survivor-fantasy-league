class Team < ApplicationRecord
  has_many :memberships
  has_many :castaways, through: :memberships

  def points
    castaways.flat_map(&:scoring_events).sum(&:points)
  end
end
