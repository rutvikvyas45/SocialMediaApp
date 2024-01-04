class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  scope :old, -> { where('created_at < ?', 07.days.ago) }
end
