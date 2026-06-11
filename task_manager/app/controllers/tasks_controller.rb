class TasksController < ApplicationController
  before_action :require_login
  def index
    @tasks = Task.includes(:comments, :sub_tasks).all
  end

  def new
    @task = Task.new
    # This builds 3 empty sub-tasks in memory so the form has fields to render
    3.times { @task.sub_tasks.build }
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path # Send back to homepage if successful
    else
      render :new, status: :unprocessable_entity # Show from again if it fails
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def toggle
    @task = Task.find(params[:id])
    # This flips the boolean to the opposite of whatever it currently is
    @task.update(completed: !@task.completed)

    # Redirect back to where they clicked it from
    redirect_back(fallback_location: tasks_path)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, sub_tasks_attributes: [ :id, :title, :completed, :_destroy ])
  end
end
