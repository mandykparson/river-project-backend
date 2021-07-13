Rails.application.routes.draw do
  resources :river_stretches
  resources :comments
  resources :pois
  resources :images
  resources :users, only: [:index, :create]
  post '/login', to: 'users#login'
end
