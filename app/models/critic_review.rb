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
#  author_id      :string
#  publication    :string
#  link_to_review :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require_relative "review"

class CriticReview < Review

end
