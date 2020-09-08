class AnswersController < ApplicationController
    before_action :get_answer, only: [:show, :edit, :update, :destroy]
    
    def new
        # byebug
        @question = Question.find_by_id(params[:id])
        @answer = @question.answers.build
        # @answer = Answer.new
    end

    def create
        @answer = @current_user.answers.create(answer_param)
        if @answer.id.nil?
            flash[:error] = @answer.errors.full_messages
            redirect_to new_answer_path(@answer.question)
        else
            redirect_to question_path(@current_user, @answer.question)
        end
    end

    def update
        @answer.update(answer_param)
        redirect_to question_path(@current_user,@answer.question)
    end

    def destroy
        # byebug
        @answer.destroy
        redirect_to question_path(@current_user,@answer.question)
    end

    private

    def get_answer
        @answer = Answer.find_by_id(params[:id])
    end

    def answer_param
        params.require(:answer).permit(:question_id, :content)
    end
end
