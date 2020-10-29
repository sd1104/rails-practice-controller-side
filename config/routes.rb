Rails.application.routes.draw do
  root "tweets#index"
  devise_for :users
  resources :users, only: :show
  resources :tweets do
    resources :comments, only: :create
  end
end
