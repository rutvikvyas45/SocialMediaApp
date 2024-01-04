class User < ApplicationRecord
  has_many :posts, -> { order(created_at: :desc) }
  has_many :comments, through: :posts
  has_many :likes, through: :posts

  scope :new_user, ->(time) { where('created_at > ?', time) }
end
