class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = policy_scope(Dog)
    if params.has_key?(:q)
      @dogs = Dog.where('location LIKE ?', "%#{params[:q]}%")
    else
      @dogs = Dog.all
    end
  end

  def show
    @appointment = Appointment.new
    # @lng = @Geocode.location
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
    params.require(:dog).permit(:name, :photo, :age, :pedigree, :description, :location, :user_id, :breed_id)
  end
end
