class ScoringEvent < ApplicationRecord
  belongs_to :castaway
  belongs_to :episode
  belongs_to :scoring_criterion

  def points
    scoring_criterion.points * multiplier
  end
end
