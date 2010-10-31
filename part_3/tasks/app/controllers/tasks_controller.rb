class TasksController < ApplicationController
  def create
    task = Task.create!(params[:task])
    redirect_to list_path(task.list)
  end
  
  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to task.list
  end
end
