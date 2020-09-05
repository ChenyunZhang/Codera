class ApplicationController < ActionController::Base
    helper_method :logged_in?
    before_action :auhorized_to_see_page

    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end

    def auhorized_to_see_page
        redirect_to login_path unless logged_in?
    end

end
