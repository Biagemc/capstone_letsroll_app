class Post < ApplicationRecord
  belongs_to :position
  has_many :comments
end
