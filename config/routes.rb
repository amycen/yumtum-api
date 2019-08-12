Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:show]
  resources :orders, only: [:create, :show]
  resources :items, only: [:show]
  resources :order_items, only: [:create, :show]
  
  post "/add_item/:item_id", to: "orders#add_item"
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"

end
