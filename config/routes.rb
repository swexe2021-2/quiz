Rails.application.routes.draw do
  resources :users
  resources :questions
  get 'user/main'
  post 'user/login'
  get 'user/logout'
  root 'users#index'
end
