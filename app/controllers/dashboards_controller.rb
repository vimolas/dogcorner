class DashboardsController < ApplicationController
  def show
    @user = current_user
    @dogs = current_user.dogs
    @appointments = current_user.appointments
    authorize @dogs
  end
end



