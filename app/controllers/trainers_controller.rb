class TrainersController < ApplicationController

def index
end

def new
  @trainer = Trainer.new
end

end
