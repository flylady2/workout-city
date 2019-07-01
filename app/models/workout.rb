class Workout < ApplicationRecord

  belongs_to :trainer
  belongs_to :client
  has_and_belongs_to_many :exercises


end
