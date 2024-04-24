Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :tweets
  
  get :dashboard, to: "dashboard#index"

  resources :usernames, only: [:new, :update]
end
