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
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @appointment.update(appointment_status_params)
    redirect_to dashboard_path
  end

  def destroy
    @appointment.destroy
    redirect_to dashboard_path
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
    authorize @appointment
  end

  def appointment_params
    params.require(:appointment).permit(:date, :message, :status, :user_id, :dog_id)
  end

  def appointment_status_params
    params.permit(:status)
  end

end



















