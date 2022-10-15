class reservationsController < ApplicationController
  before_action :authenticate_user!, only: [ :create ]

  def create
  end
end
