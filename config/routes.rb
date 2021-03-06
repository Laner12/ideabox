Rails.application.routes.draw do
  namespace :admin do
    resources :categories
  end
  resources :ideas
  resources :users

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
