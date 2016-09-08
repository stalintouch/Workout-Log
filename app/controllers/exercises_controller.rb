class ExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to @exercise 
    else
      render 'new'
    end
  end

  def new
    @exercise = Exercise.new 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def exercise_params
      params.require(:exercise).permit(:date, :workout, :mood, :length)
    end

    def find_exercise
      @exercise = Exercise.find(params[:id])
    end

end
