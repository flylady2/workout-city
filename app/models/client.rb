class Client < ApplicationRecord

  has_secure_password
  has_many :workouts
  has_many :trainers, through: :workouts

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
end
