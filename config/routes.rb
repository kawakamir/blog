Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
