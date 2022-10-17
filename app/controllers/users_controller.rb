class UsersController < ApplicationController

  def show
    @user = current_user
    @upcoming_reservations = Reservation.where('date >= ?', DateTime.now).where('state = ?', 'accepted')
    past_reservations = Reservation.where('date < ?', DateTime.now)
    @past_reservations_count = past_reservations.count
    @teacher = Teacher.where('user_id = ?', current_user)
  end

  def past_reservations
    @user = current_user
    @past_reservations = Reservation.where('date < ?', DateTime.now)
  end

  def pending_reservations
    @user = current_user
    @pending_reservations = Reservation.where('state = ?', 'pending')
  end

  def as_teacher
    @user = current_user
    @as_teacher = Teacher.where('user_id = ?', current_user)
  end
end
