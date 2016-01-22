Rails.application.routes.draw do
  resources :hits

  resources :ants, except: [:show]
  root 'ants#index'
  match "/:slug" => "ants#show", :via => [:get]
end
