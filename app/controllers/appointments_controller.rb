class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = policy_scope(Appointment)
  end

  def show
    @appointments = Appointment.find(params[:id])
  end

  def new
    @appointment = current_user.appointments.new
    authorize @appointment
  end

  def create
    @appointment = current_user.appointments.new(appointments_params)
    @appointment.dog = Dog.find(params[:dog_id])
    authorize @appointment
    if @appointment.save
      redirect_to dashboard, notice: "Appointment created!" # You need to redirect somewhere, probably appointments#show
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

  def appointments_params
    params.require(:appointment).permit(:message, :date, :user_id)
  end
end
