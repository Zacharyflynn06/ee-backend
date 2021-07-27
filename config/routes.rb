Rails.application.routes.draw do
  resources :orders
  resources :carts
  resources :products
  resources :videos
  resources :articles
  resources :events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
