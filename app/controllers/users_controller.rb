class UsersController < ApplicationController
    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_param)
        redirect_to user_path(@user)
    end

    def update
        @user.update(user_param)
        redirect_to user_path(@user)
    end

    def destroy
        @user.destroy
        # redirect_to users_path
    end

    private
    def get_user
        @user = User.find(params[:id])
    end

    def user_param
        params.require(:user).permit(:first_name,:last_name,:password,:email)
    end
end
