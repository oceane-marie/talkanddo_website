class UsersController < ApplicationController

  def show
    @user = current_user
    @pending_reservations = Reservation.where('date >= ?', DateTime.now)
    @past_reservations = Reservation.where('date < ?', DateTime.now)
  end
end
