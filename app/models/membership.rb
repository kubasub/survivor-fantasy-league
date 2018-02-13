class Membership < ApplicationRecord
  belongs_to :team
  belongs_to :castaway
end
