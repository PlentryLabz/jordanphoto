class GallariesUploader < ApplicationUploader
  process resize_to_fit: [300, 400]
end