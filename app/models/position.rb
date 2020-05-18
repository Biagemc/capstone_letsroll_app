class Position < ApplicationRecord
  has_many :position_sequences
  has_many :sequences, through: :position_sequences
  has_many :position_tags
  has_many :tags, through: :position_tags
  has_one :post
  has_many :favourites
end
