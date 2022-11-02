Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show, :create, :destroy]
  # route to test your configuration
  get '/hello', to: 'application#hello_world'
end