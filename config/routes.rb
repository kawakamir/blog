Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :edit, :update] do
    resources :blogs, only: [:index, :create]
  end
end
