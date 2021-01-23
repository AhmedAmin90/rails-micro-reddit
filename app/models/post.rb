class Post < ApplicationRecord
  validates :user, presence: true
  validates :title, presence: true, uniqueness: true, length: { minimum: 2, maximum: 50 }
  validates :body, presence: true, length: { minimum: 10 }

  belongs_to :user
  has_many :comments
end
