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
    @task = Task.new
    @task.user_id = params[:user_id]
    @task.name = params[:name]
    @task.category_id = params[:category_id]
    @task.date = params[:date]
    @task.time = params[:time]
    @task.length = params[:length]
    @task.order = params[:order]
    @task.priority = params[:priority]
    @task.repeat = params[:repeat]
    @task.notes = params[:notes]
    @task.status = params[:status]
    @task.date_complete = params[:date_complete]

    if @task.save
      redirect_to "/tasks", :notice => "Task created successfully."
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    @task.user_id = params[:user_id]
    @task.name = params[:name]
    @task.category_id = params[:category_id]
    @task.date = params[:date]
    @task.time = params[:time]
    @task.length = params[:length]
    @task.order = params[:order]
    @task.priority = params[:priority]
    @task.repeat = params[:repeat]
    @task.notes = params[:notes]
    @task.status = params[:status]
    @task.date_complete = params[:date_complete]
    if @task.save
      redirect_to "/tasks", :notice => "Task updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    redirect_to "/tasks", :notice => "Task deleted."
  end
end
