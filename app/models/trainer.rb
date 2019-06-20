class Trainer < ApplicationRecord
  has_secure_password
  has_many :workouts
  has_many :clients, through: :workouts
  belongs_to :gym
end
