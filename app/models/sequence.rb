class Sequence < ApplicationRecord
  has_many :position_sequences
  has_many :positions, through: :position_sequences
  belongs_to :user
end
