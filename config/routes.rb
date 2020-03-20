Rails.application.routes.draw do
  devise_for :users
  root to:"posts#index"
  namespace :posts do
    resources :searches, only: :index
  end
  resources :users, only: [:index, :show]
  resources :posts do
    resources :comments, only: [:create]
  end
end
