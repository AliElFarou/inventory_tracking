Rails.application.routes.draw do
  
  resources :items
  resources :warehouses

  get "/", to: "warehouses#index", as: :root 
end
