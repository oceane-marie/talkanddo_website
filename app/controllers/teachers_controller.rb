class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  # before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @teachers = Teacher.all
    # sort by language
    if params[:location].present?
      @teachers = Teacher.where('location ILIKE ?', "%#{params[:location]}%")
    elsif params[:language].present?
      @teachers = Teacher.where('language ILIKE ?', "%#{params[:language]}%")
    elsif params[:activity].present?
      @teachers = Teacher.where('activity ILIKE ?', "%#{params[:activity]}%")
    else
      @teachers = Teacher.all
    end
    # ajax
    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { teachers: @teachers } }
    end
  end

  def show
    @teacher = Teacher.find(params[:id])

    @reservation = Reservation.new
  end

  def new
  end

  def create
  end
end
