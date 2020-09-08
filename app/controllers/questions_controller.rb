class QuestionsController < ApplicationController
    before_action :get_question, only: [:show, :edit, :update, :destroy]

    def index
        @questions = Question.all
    end

    def new
        # byebug
        @question = @current_user.questions.build
    end

    def create
        # byebug
        @question = @current_user.questions.create(question_param)
        redirect_to user_path(@current_user)
    end

    def update
        @question.update(question_param)
        redirect_to user_path(@current_user)
    end

    def destroy
        @question.destroy
        redirect_to user_path(@current_user)
    end

    private

    def get_question
        @question = Question.find_by_id(params[:id])
    end
    def question_param
        params.require(:question).permit(:user_id,:title,:content,category_ids:[], categories_attributes: [:name])
    end
end
