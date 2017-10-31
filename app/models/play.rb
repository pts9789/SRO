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

require_relative "show"

class Play < Show

end
