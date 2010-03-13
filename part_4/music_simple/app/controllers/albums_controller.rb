class AlbumsController < ApplicationController
  before_filter :load_artist
  before_filter :load_album, :only => [:show]
  
  def show
  end
  
  def new
    @album = @artist.albums.build
  end
  
  def create
    @album = @artist.albums.create!(params[:album])
    redirect_to @artist
  end
  
  private
  
  def load_artist
    @artist = Artist.find(params[:artist_id])
  end
  
  def load_album
    @album = @artist.albums.find(params[:id])
  end
end
