class User < ApplicationRecord
  has_many :positions
  has_many :comments
  has_many :sequences

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
