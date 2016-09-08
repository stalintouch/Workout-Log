class ExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @exercises = Exercise.all.order('created_at DESC')
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
    if @exercise.update(exercise_params)
      redirect_to @exercise 
    else
      render 'edit'
    end
  end

  def destroy
    @exercise.destroy
    redirect_to root_path
  end

  private

    def exercise_params
      params.require(:exercise).permit(:date, :workout, :mood, :length)
    end

    def find_exercise
      @exercise = Exercise.find(params[:id])
    end

end
