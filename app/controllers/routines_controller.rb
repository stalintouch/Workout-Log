class RoutinesController < ApplicationController
  def create
    @exercise = Exercise.find(params[:exercise_id])
    @routine = @exercise.routines.create(params.require(:routine).permit(:name, :sets, :reps))

    redirect_to exercise_path(@exercise)
  end
end