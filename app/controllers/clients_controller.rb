class ClientsController < ApplicationController

  def index
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    #byebug
    if @client.save
      session[:user_id] = @client.id
      redirect_to client_path(@client)
    else
      render :new
    end
  end

  def show
    @client = Client.find_by(id: params[:id])
  end

  private

  def client_params
    params.require(:client).permit(:username, :email, :password, :age)
  end
end
