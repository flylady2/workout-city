class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.date :date
      t.belongs_to :trainer, foreign_key: true
      t.belongs_to :client, foreign_key: true

      t.timestamps
    end
  end
end
