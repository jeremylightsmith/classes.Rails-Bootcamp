class ArtistsController < ApplicationController
  before_filter :load_artist, :only => [:show, :destroy]
  
  def index
    @artists = Artist.all
  end
  
  def show
  end
  
  def create
    @artist = Artist.create!(params[:artist])
    redirect_to @artist
  end
  
  def new
    @artist = Artist.new
  end
  
  def destroy
    @artist.destroy
    redirect_to artists_path
  end
  
  private
  
  def load_artist
    @artist = Artist.find(params[:id])
  end
end
