Rails.application.routes.draw do
  root to: "trees#index"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/responses", to: "responses#create"

  get "/search", to: "search#search"
  
  resources :users, only: [:show, :new, :edit, :create, :update, :destroy]
  resources :trees, only: [:index, :show, :new, :create]
  
end
