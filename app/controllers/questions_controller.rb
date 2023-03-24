class QuestionsController < ApplicationController
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found
  def index
    @questions = Question.all
  end

  def show; end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def destroy
    @question.destroy
    redirect_to '/'
  end

  private

  def question_params
    params.require(:question).permit(:body, :test_id)
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def rescue_with_test_not_found
    render plain: 'Question not found'
  end
end
