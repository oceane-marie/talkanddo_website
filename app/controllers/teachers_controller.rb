class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new ]
  before_action :authenticate_user!, only: [ :create ]

  def index
    @teachers = Teacher.all
    # sort
    if params[:location].present?
      @teachers = Teacher.where('location ILIKE ?', "%#{params[:location]}%")
    elsif params[:language].present?
      @teachers = Teacher.where('language ILIKE ?', "%#{params[:language]}%")
    elsif params[:category].present?
      @teachers = Teacher.where('category ILIKE ?', "%#{params[:category]}%")
    else
      @teachers = Teacher.all
    end
    # ajax
    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { teachers: @teachers } }
    end

    all_languages = Teacher.all.pluck(:language)
    @single_languages = all_languages.uniq

    all_categories = Teacher.all.pluck(:category)
    @single_categories = all_categories.uniq
  end

  def show
    @teacher = Teacher.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @teacher = Teacher.new
    @user = current_user
  end

  def create
    @user = current_user
    @teacher = Teacher.new(teacher_params)
    @teacher.user = @user
    if @teacher.save
      redirect_to new_teacher_path
    else
      render "teachers/new"
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to as_teacher_user_path(current_user)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:title, :description, :duration, :price, :location, :language, :activity, :category, :user_id)
  end
end
