class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_one_attached :banner_image
  has_rich_text :body
end
