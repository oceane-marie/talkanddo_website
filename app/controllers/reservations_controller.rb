class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.price = @teacher.price
    @reservation.duration = @teacher.duration
    @reservation.state = "pending"
    # @reservation.save!
    if @reservation.save
      redirect_to pending_reservations_user_path(current_user)
    else
      render "teachers/show"
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :duration, :price, :state, :teacher_id)
  end
end
