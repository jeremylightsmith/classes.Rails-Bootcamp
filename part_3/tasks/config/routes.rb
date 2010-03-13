ActionController::Routing::Routes.draw do |map|
  map.root :controller => :lists
  map.resources :lists
end
