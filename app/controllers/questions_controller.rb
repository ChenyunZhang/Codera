class QuestionsController < ApplicationController

    def index
        @questions = @current_user.questions
    end

    def new
        @question = @current_user.questions.build(question_param)
    end

    def create
        # byebug
        @question = @current_user.questions.create(question_param)
        redirect_to user_path(@current_user)
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

    def question_param
        params.require(:question).permit(:user_id,:title,:content,category_ids:[], categories_attributes: [:name])
    end
end
