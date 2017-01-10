class AnswersController < ApplicationController
  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers
  end


  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      flash[:notice] = 'Answer was successfully created.'
    else
      flash[:notice] = "Failed to save answer."
    end
    redirect_to question_path @question
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_description)
  end
end
