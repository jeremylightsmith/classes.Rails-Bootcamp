ActionController::Routing::Routes.draw do |map|
  map.root :controller => :artists
  map.resources :artists do |artist|
    artist.resources :albums
  end
end
