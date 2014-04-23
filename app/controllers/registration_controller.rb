class RegistrationController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new

  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update(name: params[:update_name])
    redirect_to '/'
  end

  def create
    guest = Guest.create(name: params[:user_name])
    session[:user_id] = guest.id
    redirect_to '/'
  end
end