Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  root to:"posts#index"
  namespace :posts do
    resources :searches, only: :index
  end
  resources :users, only: [:index, :show]
  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:index, :create, :destroy]
  end
end
