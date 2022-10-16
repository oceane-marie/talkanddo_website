class UsersController < ApplicationController

  def show
    @user = current_user
    @upcoming_reservations = Reservation.where('date >= ?', DateTime.now).where('state = ?', 'accepted')
  end

  def past_reservations
    @past_reservations = Reservation.where('date < ?', DateTime.now)
  end

  def pending_reservations
    @pending_reservations = Reservation.where('state = ?', 'pending')
  end

end
