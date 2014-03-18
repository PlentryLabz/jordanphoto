class GallariesUploader < ApplicationUploader
  process resize_to_fit: [250, 280]
end