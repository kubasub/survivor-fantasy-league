class Castaway < ApplicationRecord
  SEASON = 40

  has_many :memberships
  has_many :teams, through: :memberships
  has_many :scoring_events

  def full_name
    "#{first_name} #{last_name}"
  end

  def headshot_path
    "/castaways/headshots/#{SEASON}/#{headshot_filename}"
  end

  def points
    scoring_events.sum(&:points)
  end
end
