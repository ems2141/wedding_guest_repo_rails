class WelcomeController < ApplicationController

  def index
      @guests = Guest.all
  end

end