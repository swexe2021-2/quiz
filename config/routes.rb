Rails.application.routes.draw do
  resources :users
  resources :quizs
  get 'user/main'
  post 'user/login'
  get 'user/logout'
  root 'quizs#index'
end
