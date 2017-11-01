# == Schema Information
#
# Table name: shows
#
#  id                 :integer          not null, primary key
#  title              :string           not null
#  type               :string           not null
#  year               :integer          not null
#  status             :string           not null
#  theater_info       :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  critic_consensus   :text
#

class Show < ApplicationRecord
  validates :title, :type, :year, :status, :theater_info, presence: true

  has_attached_file :image, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :reviews,
  foreign_key: :show_id,
  class_name: 'Review'

  has_many :critic_reviews,
    foreign_key: :show_id,
    class_name: 'CriticReview'
    # -> { where type: 'CriticReview' }

  has_many :user_reviews,
    foreign_key: :show_id,
    class_name: 'UserReview'
    # -> { where type: 'CriticReview' }

end
