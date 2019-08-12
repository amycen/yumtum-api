Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :restaurants, only: [:show]
  resources :orders, only: [:create, :show]
  resources :items, only: [:show]
  
  post "/add_item/:item_id", to: "orders#add_item"
end
