class ApplicationController < ActionController::Base

  private

  def current_user
    Trainer.find_by_id(session[:user_id]) || Client.find_by_id(session[:user_id])
  end

end
