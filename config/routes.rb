Rails.application.routes.draw do
  resources :tables
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "about", to: "about#index"

root to: "main#index"

get "sign_up", to: "register#new"
post "sign_up", to: "register#create"

get "author", to: "authors#index"
post "/save", to: "authors#create"

get "form", to: "authors#form"

  # Defines the root path route ("/")
  # root "articles#index"
end
