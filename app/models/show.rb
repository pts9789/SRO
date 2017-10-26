class Show < ApplicationRecord
  validates :title, :type, :year, :status, :theater_info, presence: true

  has_attached_file :image, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
