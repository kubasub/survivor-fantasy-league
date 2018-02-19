class Episode < ApplicationRecord
  validates :number, uniqueness: true
end
