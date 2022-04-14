class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :weekly_feedbacks, dependent: :destroy

  validates :email, uniqueness: true
  validates :email, :password, presence: true
end
