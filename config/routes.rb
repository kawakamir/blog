Rails.application.routes.draw do
  devise_for :users
  root "contents#index"
  resources :contents do
    resources :comments, only: [:create, :update, :destroy, :edit, :show]
  end
end
