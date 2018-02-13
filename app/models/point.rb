class Point < ApplicationRecord
  belongs_to :castaway
  belongs_to :episode
  belongs_to :scoring_event
end
