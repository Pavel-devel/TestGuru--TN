class TestsController < ApplicationController

  before_action :find_test, only: %i[edit show update destroy]
  before_action :find_tests, only: %i[index]
  def index; end

  def show
    @questions = @test.questions
  end

  def edit; end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  def update
    if @test.update(test_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @test.destroy
    redirect_to root_path
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end

  def find_tests
    @tests = Test.all
  end
end
