class DogsController < ApplicationController
  def index
    @dogs = Dog.all.reverse
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user_id = 2

    if @dog.save
      redirect_to dogs_path
    else
      flash[:error] = @dog.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :location, :image_url)
  end
end
