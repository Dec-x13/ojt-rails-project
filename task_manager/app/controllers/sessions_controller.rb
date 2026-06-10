class SessionsController < ApplicationController
  def new
    # Renders the login form
  end

  def create
    user = User.find_by(email: params[:email])

    # .authenticate is provided by has_secure_password
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully."
      redirect_to tasks_path
    else
      flash.now[:alert] = "Invalid email or password."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out successfully."
    redirect_to login_path, status: :see_other
  end
end
