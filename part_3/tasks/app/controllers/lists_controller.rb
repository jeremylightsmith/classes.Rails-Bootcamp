class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  
  def new
  end
  
  def create
    @list = List.create!(params[:list])
    redirect_to list_path(@list)
  end
  
  def show
    @list = List.find(params[:id])
  end
end
