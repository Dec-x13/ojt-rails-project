class ApplicationController < ActionController::Base
  # Make current_user available in your views as well
  helper_method :current_user

  private

  def current_user
    # Find the user by the session ID, if the session exists
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_login
    unless current_user
      flash[:alert] = "You must be logged in to access that section."
      redirect_to login_path
    end
  end
end
