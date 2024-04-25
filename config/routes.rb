Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :tweets do
    member do
      delete 'custom_delete', to: 'tweets#custom_delete'
    end
  end
  
  get :dashboard, to: "dashboard#index"

  resources :usernames, only: [:new, :update]
  
end
