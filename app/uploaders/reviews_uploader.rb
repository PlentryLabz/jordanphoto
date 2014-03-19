class ReviewsUploader < ApplicationUploader
  version :preview do
    process resize_to_fit: [250, 400]
  end
end