class WeeklyFeedback < ApplicationRecord
  belongs_to :user

  validates :user_id, :date, :comments, presence: true

end
