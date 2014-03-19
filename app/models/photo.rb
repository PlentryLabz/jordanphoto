class Photo < ActiveRecord::Base
  attr_accessible :pic

  validates :pic, presence: true

  mount_uploader :pic, PhotosUploader

  belongs_to :gallary

  def to_jq_upload
    {
      "name" => read_attribute(:pic),
      "size" => "#{'%.2f' % (pic.size / 1024.0)} KB",
      "url" => pic.url,
      "delete_url" => id,
      "picture_id" => id,
      "delete_type" => "DELETE"
    }
  end

  def path
    pic.url
  end

  def title
    nil
  end

end
