class WeeklyFeedback < ApplicationRecord
  belongs_to :user

  validates :user_id, :date, :weight, :comments, presence: true

end
