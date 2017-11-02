class ShowsToSee < ApplicationRecord
  validates :user_id, :show_id, presence: true

  belongs_to :show,
    foreign_key: :show_id,
    class_name: 'Show'

  belongs_to :user,
    foreign_key: :user_id,
    class_name: 'User'

end
