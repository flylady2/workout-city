class TrainersController < ApplicationController

def index
  @trainers = Trainer.all
end

#loading the signup form
def new
  @trainer = Trainer.new
end

#signup
def create
  #byebug
  #@trainer = Trainer.new(trainer_params)
  if params[:gym_id] && gym = Gym.find_by_id(params[:gym_id])
    @trainer = gym.build_trainer(trainer_params)
  else
    @trainer = Trainer.new(trainer_params)
  end
  #byebug
  if @trainer.save
    session[:user_id] = @trainer.id
    redirect_to trainers_home_path(@trainer)
  else
    render :new
  end
end

def home
  #@trainer = Trainer.find_by(id: params[:id])
  render :home
end

private

def trainer_params
  params.require(:trainer).permit(:username, :password, :gym_id)
end


end
