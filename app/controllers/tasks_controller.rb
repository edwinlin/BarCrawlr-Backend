class TasksController < ApplicationController

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    @task = Task.create(task_params)
    render json: @task
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @task.destroy
  end

# Private helper methods
  private

  def task_params
    params.require(:project_id).permit(:name, :description, :user_id)
  end

end
