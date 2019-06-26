class GymsController < ApplicationController
  validates :name, presence: true
  validates :location, presence: true
  validates :location, uniqueness: true
end
