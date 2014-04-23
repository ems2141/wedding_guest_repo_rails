class RegistrationController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new

  end

  def create

    guest = Guest.create(name: params[:user_name])
    session[:user_id] = guest.id

    redirect_to '/'
  end
end