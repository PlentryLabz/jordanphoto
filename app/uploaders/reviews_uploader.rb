class ReviewsUploader < ApplicationUploader
  process :resize_to_fit => [400, 300]
end