Rails.application.routes.draw do
  resources :users
  resources :quizs
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  post 'quizs/answer'
  root 'quizs#index'
end
