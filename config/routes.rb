Rails.application.routes.draw do
  root "tweets#index"
  devise_for :users
  resources :users, only: :create
  resources :tweets do
    resources :comments
  end
end
