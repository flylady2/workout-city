class AddDateToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :date, :datetime
  end
end
