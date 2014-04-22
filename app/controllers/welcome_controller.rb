class WelcomeController < ApplicationController

  def index
    user_id = session[:user_id]

    # User id not set on first rendering of the
    # page
    if !user_id.nil?
      @user = Guest.find(user_id)
    end
  end

end