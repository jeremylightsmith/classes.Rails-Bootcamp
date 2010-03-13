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
    @list = List.new(params[:list])
    if @list.save
      redirect_to @list
    else
      render :action => :new
    end
  end
  
  def edit
  end
  
  def update
    if @list.update_attributes(params[:list])
      redirect_to @list
    else
      render :action => :edit
    end
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
