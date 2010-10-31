Music::Application.routes.draw do
  root :to => "artists#index"
  
  resources :artists do 
    resources :albums
  end
end
