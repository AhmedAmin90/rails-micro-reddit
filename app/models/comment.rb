class Comment < ApplicationRecord
  validates :user, presence: true
  validates :post, presence: true
  validates :title, presence: true, uniqueness: true, length: { minimum: 2, maximum: 25 }
  validates :body, presence: true, length: { minimum: 10 }

  belongs_to :user
  belongs_to :post
end
