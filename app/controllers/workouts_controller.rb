class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    #byebug
    trainer = Trainer.find_by_id(params[:trainer_id])
    @workout = trainer.workouts.build
      #@workout = trainer.workouts.build
      byebug
  end

  def create
    #byebug
    @trainer = Trainer.find_by_id(params[:workout][:trainer_id])
    #byebug
    @workout = @trainer.workouts.build(workout_params)
    @workout.trainer = @trainer
    byebug
    if @workout.save

      redirect_to workout_path(@workout)
    else
      render :new
    end
  end

  private
  def workout_params
    params.require(:workout).permit(:name, :trainer_id, :date)
  end

end
