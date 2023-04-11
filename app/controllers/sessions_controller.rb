class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email].downcase, format: { with: /\A\s*[^@\s]+@[^@\s]+\s*\z} )
    # if user exists and password correct
    if user.present? && user.authenticate(params[:password])
      # save the user
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      # if not sent alert and direct to sign in form again
      flash[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end
