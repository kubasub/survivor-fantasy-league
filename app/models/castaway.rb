class Castaway < ApplicationRecord
  has_many :memberships
  has_many :teams, through: :memberships
  has_many :scoring_events

  def full_name
    "#{first_name} #{last_name}"
  end
end
