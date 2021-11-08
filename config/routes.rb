Rails.application.routes.draw do
  resources :users
  resources :quizs
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'quizs#index'
end
