Rails.application.routes.draw do
  root to: "trees#index"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :trees, only: [:index, :new, :create]
  resources :users, only: [:show, :new, :edit, :create, :update, :destroy]
end
