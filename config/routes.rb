Rails.application.routes.draw do
  get 'hello_cats/index'
  resources :articles
  root 'hello_cats#index'
end
