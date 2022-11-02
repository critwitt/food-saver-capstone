Rails.application.routes.draw do
  resources :ingredient_lists, only: [:index, :show, :create, :destroy]
  resources :recipes, only: [:index, :show, :create, :destroy]
  resources :perishables, only: [:index, :show, :create, :destroy]
  resources :ingredients, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show, :create, :destroy]
  # route to test your configuration
  get '/hello', to: 'application#hello_world'
end