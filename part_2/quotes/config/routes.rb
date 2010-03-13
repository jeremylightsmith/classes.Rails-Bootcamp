ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'quotes'
  map.resources :quotes
end
