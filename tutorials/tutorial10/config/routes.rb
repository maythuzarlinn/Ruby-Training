Rails.application.routes.draw do
  root "reader#index"
  post "/show_content", to: "reader#show_content"
  get "/show_content", to: "reader#show_content"
  get "/return_root", to: "reader#return_root"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
