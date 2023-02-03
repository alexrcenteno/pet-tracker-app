class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render :index
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render :show
  end

  def new
    @dog = Dog.new
    render :new
  end

  def create
    @dog = Dog.create(
      name: params[:dog][:name],
      breed: params[:dog][:breed],
      image: params[:dog][:breed],
    )
    redirect_to "/dogs"
  end
end
