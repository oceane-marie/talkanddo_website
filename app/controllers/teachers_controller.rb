class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  # before_action :authenticate_user!, only: [ :new, :create ]

  def index
  end

  def show
  end

  def new
  end

  def create
  end
end
