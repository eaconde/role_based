class AnswersController < ApplicationController
  before_action :set_question

  def create
    @answer = @question.answers.build(answers_params)
    @answer.user = current_user
    @answer.save
    redirect_to questions_url
  end

  def destroy
    @answer = @question.answers.find(params[:id].destroy)
    redirect_to questions_url
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answers_params
    params.require(:answer).permit(:content)
  end
end
