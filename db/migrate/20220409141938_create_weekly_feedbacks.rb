class CreateWeeklyFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :weekly_feedbacks do |t|
      t.datetime :date
      t.float :weight
      t.text :comments

      t.timestamps
    end
  end
end
