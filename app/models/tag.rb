class Tag < ApplicationRecord
  has_many :position_tags
  has_many :positions, through: :position_tags
end
