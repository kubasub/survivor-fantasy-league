class Team < ApplicationRecord
  has_many :memberships
  has_many :castaways, through: :memberships
  has_many :scoring_events, through: :castaways

  def score
    castaways.flat_map(&:scoring_events).sum(&:points)
  end
end
