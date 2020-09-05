class SessionController < ApplicationController
  def new
  end

  def create
    # byebug
    #use find_by instead of find because find raise exception error when user is nil, find_by will just return nil
    user = User.find_by(email: params[:session][:email].downcase)
    # if the email is in the db, verify the password
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user_path(user)
    else
      flash.now[:danger] = "Invalid email/password"
      redirect_to "/login"
    end
  end

  def destroy
    log_out
    redirect_to "user#home"
  end
end
