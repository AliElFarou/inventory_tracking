Rails.application.routes.draw do
  
  resources :items
  resources :warehouses
  resources :inventories, only: [:new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "items#index", as: :root 
end
