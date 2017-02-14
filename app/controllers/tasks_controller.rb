class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to created_task_path(@task.id)
  end

  def edit
     @task = Task.find(params[:id])
  end

  def update
      @task = Task.find(params[:id])
      @task.update(params[:task])

      redirect_to updated_task_path(@task.id)

  end

  def delete
     @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path

  end

private

  def task_params
    params.require(:task).permit(:name, :done)
  end
end
