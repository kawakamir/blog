Rails.application.routes.draw do
  devise_for :users
  root "contents#index"
  resources :contents do
    resources :comment, only: :create
  end
end
