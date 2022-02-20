Rails.application.routes.draw do
  resources :prices
  resources :transactions
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  get '/current_price', to: 'prices#get_current_price'
  get '/user_transactions', to: 'transactions#index'
  resources :prices
  root to: "static#home"
end
