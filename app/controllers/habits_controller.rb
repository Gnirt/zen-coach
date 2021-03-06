class HabitsController < ApplicationController
  def index
    @habits = Habit.where(user_id: current_user.id)
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.user = current_user
    if @habit.save
      redirect_to @habit
    else
      render 'new'
    end
  end

  private
    def habit_params
      params.require(:habit).permit(:name, :description)
    end
end
