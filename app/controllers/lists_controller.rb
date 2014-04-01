class ListsController < ApplicationController

  def new
    @list= List.new()
    render('lists/new.html.erb')
  end

  def create
    @list = List.new( :name => params[:name])

    if @list.save
      render('lists/success.html.erb')
    else
      render('lists/new.html.erb')
    end
  end

  def index
    @lists = List.all
    render('lists/index.html.erb')
  end
end
