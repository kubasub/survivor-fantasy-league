class Team < ApplicationRecord
  has_many :memberships
  has_many :castaways, through: :memberships
end
