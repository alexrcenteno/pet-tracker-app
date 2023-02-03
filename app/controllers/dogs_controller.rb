class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render :index
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render :show
  end
end
