class Review < ActiveRecord::Base
  attr_accessible :title, :body, :pic

  validates :title, presence: true
  validates :body, presence: true
  # validates :pic, presence: true

  mount_uploader :pic, ReviewsUploader

end
