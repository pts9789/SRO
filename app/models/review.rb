# == Schema Information
#
# Table name: reviews
#
#  id             :integer          not null, primary key
#  type           :string           not null
#  author_name    :string           not null
#  body           :text             not null
#  score          :integer          not null
#  show_id        :integer          not null
#  publication    :string
#  link_to_review :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  author_id      :integer
#

class Review < ApplicationRecord
  validates :type, :author_name, :body, :score, :show_id, presence: true

  belongs_to :show,
    foreign_key: :show_id,
    class_name: 'Show'

end
