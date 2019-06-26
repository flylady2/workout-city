class Gym < ApplicationRecord
  has_many :trainers

  validates :name, presence: true
  validates :location, presence: true
  validates :location, uniqueness: true
end
