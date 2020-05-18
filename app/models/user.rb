class User < ApplicationRecord
  has_many :positions
  has_many :comments
  has_many :sequences
  has_many :favourites

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
