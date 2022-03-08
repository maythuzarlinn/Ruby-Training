Rails.application.routes.draw do
  root "home#index"

  # Home
  get "home", to: "home#index"
  
  resources :posts

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
