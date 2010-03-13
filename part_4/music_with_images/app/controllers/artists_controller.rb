class ArtistsController < ApplicationController
  before_filter :load_artist, :only => [:show, :destroy, :edit, :update]
  
  def index
    @artists = Artist.all
  end
  
  def show
    @albums = @artist.albums.paginate(:page => params[:page], :per_page => 6, :order => "name")
  end
  
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(params[:artist])
    redirect_to @artist
  end

  def edit
  end
  
  def update
    @artist.update_attributes!(params[:artist])
    redirect_to @artist
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
