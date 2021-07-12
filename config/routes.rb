Rails.application.routes.draw do
  resources :comments
  resources :pois
  resources :images
  resources :river_stretches
  resources :users, only: [:index, :create]
  post '/login', to: 'users#login'
end
