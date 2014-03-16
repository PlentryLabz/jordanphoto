class Gallary < ActiveRecord::Base
  attr_accessible :title, :description, :pic

  validates :title, presence: true
  validates :description, presence: true
  validates :pic, presence: true

  mount_uploader :pic, GallariesUploader
end
