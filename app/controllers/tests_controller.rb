class TestsController < ApplicationController
  def index
    @tests = Test.all

    render plain: @tests
  end

  def show
    @test = Test.find(params[:id])

    render plain: @test
  end
end