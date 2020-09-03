class QuestionsController < ApplicationController
    before_action :get_question, only: [:show, :edit, :update, :destroy]

    def index
        @questions = Question.all
    end
    def new
        @question = Question.new
    end

    def create
        # byebug
        @question = Question.create(question_param)
        redirect_to question_path(@question)
    end

    def update
        @question.update(question_param)
        redirect_to question_path(@question)
    end

    def destroy
        @question.destroy
        # redirect_to users_path
    end

    private
    def get_question
        @question = Question.find(params[:id])
    end

    def question_param
        params.require(:question).permit(:user_id,:title,:content,category_ids:[], categories_attributes: [:name])
    end
end
