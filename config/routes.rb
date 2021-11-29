Rails.application.routes.draw do
  root 'quizs#index'
  resources :quizs
  get 'get_image/:id', to: 'quizs#get_image'
  post 'quizs/search', to: 'quizs#search'
  post 'quizs/:id', to: 'quizs#answer'
  resources :users
  get 'top/main'
  post 'top/login'
  get 'top/logout'
end
