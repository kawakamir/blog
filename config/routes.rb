Rails.application.routes.draw do
  devise_for :users
  root "contents#index"
  resources :users, only: [:index, :edit, :update] do
    resources :blogs, only: [:index, :create]
  end
end
