class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def create
  end

  def destroy
  end
end
