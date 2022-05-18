Rails.application.routes.draw do
  
  resources :items
  resources :warehouses
  resources :warehouse_items, only: [:new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "warehouses#index", as: :root 
end
