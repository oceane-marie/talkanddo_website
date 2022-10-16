class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  # before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @teachers = Teacher.all

    # sort by language
    if params[:language].present?
      @teachers = Teacher.where('language ILIKE ?', "%#{params[:language]}%")
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
  end

  def new
  end

  def create
  end
end
