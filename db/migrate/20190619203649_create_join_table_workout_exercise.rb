class CreateJoinTableWorkoutExercise < ActiveRecord::Migration[5.2]
  def change
    create_join_table :workouts, :exercises do |t|
       t.index [:workout_id, :exercise_id]

    end
  end
end
