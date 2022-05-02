Rails.application.routes.draw do
  root "static_pages#home"
  
  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"

  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
end