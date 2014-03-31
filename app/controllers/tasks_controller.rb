class TasksController < ApplicationController

  def new
    @task = Task.new()
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.new( :description => params[:description],
                      :due_date => params[:due_date],
                      :priority => params[:priority],
                      :done? => false)

    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/new.html.erb')
    end
  end

  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(  :description => params[:description],
                      :due_date => params[:due_date],
                      :priority => params[:priority])
      render('tasks/success.html.erb')
    else
      render('tasks/edit.html.erb')
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render('tasks/destroy.html.erb')
  end
end
