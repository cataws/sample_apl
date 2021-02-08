Rails.application.routes.draw do
  root 'tweets#index'
  devise_for :users
  resources :tweets
  resources :users
#  get 'hello_cats/index', to: 'hello_cats#index'
#  root 'hello_cats#index'
end
