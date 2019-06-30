class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    if params[:trainer_id] && trainer = Trainer.find_by_id(params[:trainer_id])
      @workout = trainer.workouts.build
    end
  end

  def create
  end

  private
  def workout_params
    params.require(:workout).permit(:name, :trainer_id, :date)
  end

end
