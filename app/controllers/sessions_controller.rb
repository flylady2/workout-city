class SessionsController < ApplicationController

def index
end

#load trainer signup form
def new_trainer
  @trainer = Trainer.new
  render :trainer/login
end

#trainer signup
def create_trainer
  @trainer = Trainer.find_by(username: params[:trainer][:username])
  if @trainer && @trainer.authenticate(params[:trainer][:password])
    session[:user_id] = @trainer.id
    redirect_to trainer_path(@trainer)
  else
    redirect_to 'trainer/login'
  end

end
