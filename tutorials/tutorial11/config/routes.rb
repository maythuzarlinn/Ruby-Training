Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "qr_generator#index"
  get "qr_generator/index"
  get "qr_generator/upload", to: "qr_generator#index"
  post "qr_generator/upload", to: "qr_generator#handle_upload"
  get "qr_generator/download", to: "qr_generator#handle_download"
end
