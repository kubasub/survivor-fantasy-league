class Episode < ApplicationRecord
  default_scope { order(:number) }
end
