Rails.application.routes.draw do
  devise_for :users
  get 'works/index'
  root to: "works#index"
  resources :works, only: [:new, :create, :show] do
   resources :buys, only: [:index, :create]
 end
  resources :users, only: :show
end
