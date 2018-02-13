class Castaway < ApplicationRecord
  has_many :memberships
  has_many :teams, through: :memberships
end
