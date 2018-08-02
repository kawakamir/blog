Rails.application.routes.draw do
  devise_for :users
  root "contents#index"
  resources :contents, only: [:index, :edit, :update, :new]
  resources :users, only: [:show]
end
