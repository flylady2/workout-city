class RemoveDateFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :date, :date
  end
end
