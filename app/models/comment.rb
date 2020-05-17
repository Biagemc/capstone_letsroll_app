class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def friendly_created_at
    created_at.strftime("%m/%d/%Y")
  end
end
