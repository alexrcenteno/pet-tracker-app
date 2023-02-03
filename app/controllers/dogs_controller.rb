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

  def edit
    @dog = dog.find_by(id: params[:id])
    render :edit
  end

  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.update(
      name: params[:dog][:name],
      width: params[:dog][:breed],
      height: params[:dog][:image],
    )
    redirect_to "/dogs"
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy
    redirect_to "/dogs", status: :see_other
  end
end
