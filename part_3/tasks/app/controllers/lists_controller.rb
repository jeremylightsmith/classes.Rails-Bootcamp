class ListsController < ApplicationController
  before_filter :load_list, :only => [:show, :edit, :update, :destroy]
  
  def index
    @lists = List.all
  end
  
  def show
  end
  
  def new
    @list = List.new
  end
  
  def create
    @list = List.create!(params[:list])
    redirect_to @list
  end
  
  def edit
  end
  
  def update
    @list.update_attributes!(params[:list])
    redirect_to @list
  end
  
  def destroy
    @list.destroy
    redirect_to lists_path
  end
  
  private
  
  def load_list
    @list = List.find(params[:id])
  end
end
