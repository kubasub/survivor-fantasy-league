class Team < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :castaways, through: :memberships
  has_many :scoring_events, through: :castaways

  validate :must_have_five_castaways
  validates :owner_name, :name, presence: true

  def score
    castaways.flat_map(&:scoring_events).sum(&:points)
  end

  private

  def must_have_five_castaways
    return if castaways.size == 5
    errors.add(:castaways, "must total 5")
  end
end
