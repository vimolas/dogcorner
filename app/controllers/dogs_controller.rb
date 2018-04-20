class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @text_input_from_user = params["search-word"]
    @dogs = policy_scope(Dog)
    if params.has_key?("search-word")
      @dogs = Dog.where('address LIKE ?', "%#{@text_input_from_user.capitalize}%")
    else
      @dogs = Dog.all
    end

    @dogsT = @dogs.where.not(latitude: nil, longitude: nil)
    @markers = @dogsT.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
      }
    end
  end

  def show
    @appointment = Appointment.new
    @marker = []
    @marker = [{lat: @dog.latitude, lng: @dog.longitude }] if @dog.latitude && @dog.longitude
  end

  def new
    @dog = current_user.dogs.new
    authorize @dog
  end

  def create
    @dog = current_user.dogs.new(dogs_params)
    authorize @dog
    if @dog.save
      redirect_to @dog
    else
      render :new
    end
  end

  def edit

  end

  def update
    @dog.update(dogs_params)
    redirect_to @dog
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
    authorize @dog
  end

  def dogs_params
    params.require(:dog).permit(:name, :photo, :age, :pedigree, :description, :address, :user_id, :breed_id)
  end
end
