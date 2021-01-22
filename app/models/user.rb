class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 2, maximum: 25 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts
  has_many :comments
end
