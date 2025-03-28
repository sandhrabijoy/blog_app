class Post < ApplicationRecord
  has_one_attached :banner_image
  has_rich_text :body
end
