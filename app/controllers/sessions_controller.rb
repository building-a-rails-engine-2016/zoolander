class SessionsController < ApplicationController
  def create
    session[:user_id] = params[:user_id]
    redirect_to root_path, notice: 'You have been logged in successfully.'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'You have been logged out successfully.'
  end
end
