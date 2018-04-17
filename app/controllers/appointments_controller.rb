class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = policy_scope(Appointment)
  end

  def new
    @appointment = current_user.appointments.new
    authorize @appointment
  end

  def create
    @appointment = current_user.appointments.new(appointments_params)
    authorize @appointment
    if @appointment.save
      redirect_to profiles_show
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
    authorize @appointment
  end

  def dogs_params
    params.require(:dog).permit(:name, :photo, :age, :pedigree, :description, :location, :user_id, :breed_id)
  end
end
