class SessionController < ApplicationController
  def new
  end

  def create
    #use find_by instead of find because find raise exception error when user is nil, find_by will just return nil
    user = User.find_by(email: params[:session][:email].downcase)
    # if the email is in the db, verify the password
    if user && user.authenticate(params[:session][:password])
      redirect_to user
    else
      flash[:danger] = "Invalid email/password"
      redirect_to "/login"
    end
  end

  def destroy

  end
end
