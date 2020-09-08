class UsersController < ApplicationController
    before_action :get_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :auhorized_to_see_page, only: [:handle_login,:new,:create,:login]

    def handle_login
        # byebug
        #use find_by instead of find because find raise exception error when user is nil, find_by will just return nil
        user = User.find_by(email: params[:session][:email].downcase)
        # if the email is in the db, verify the password
        if user && user.authenticate(params[:session][:password])
          log_in user
          redirect_to user_path(user)
        else
          # byebug
          flash[:danger] = "Invalid email/password"
          redirect_to login_path
        end
    end

      def logout
        session.delete(:user_id)
        @current_user = nil
        redirect_to login_path
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_param)
        if @user.valid?
            log_in @user
            redirect_to user_path(@user)
        else
            # byebug
            flash[:errors] = @user.errors.full_messages
            redirect_to signup_path
        end
    end

    def show
        @user = @current_user
        @questions = @user.questions
        @answers = @user.answers
    end

    def edit
        @user = @current_user
    end

    def update
        # byebug
        if User.find_by(email: params[:user][:email]) == @user || User.find_by(email: params[:user][:email]).nil?
            @user.update(user_param)
            redirect_to user_path(@user)
        else
            flash[:errors] = "Email is taken"
            redirect_to edit_user_path
        end
    end

    private
    def get_user
        @user = User.find(params[:id])
    end

    def user_param
        params.require(:user).permit(:first_name,
            :last_name,
            :password,
            :email,
            question_ids:[],
            questions_attributes: [:title, :content])
    end
end
