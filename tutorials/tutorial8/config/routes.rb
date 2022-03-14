Rails.application.routes.draw do
  root "login#index"
  post "/login_landing_page", to: "login#landing_page"
  get "/login_landing_page", to: "login#landing_page"
  #get "/logout", to: "login#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
