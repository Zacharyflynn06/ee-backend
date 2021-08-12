Rails.application.routes.draw do
  
  default_url_options :host => "http://localhost:3001"

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/current_user', to: 'current_user#index'
  resources :orders
  resources :carts
  resources :products
  resources :videos
  resources :articles
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
