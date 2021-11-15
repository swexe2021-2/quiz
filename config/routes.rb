Rails.application.routes.draw do
  resources :users
  resources :quizs
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  get 'get_image/:id', to: 'quizs#get_image'
  post 'quizs/answer'
  root 'quizs#index'
end
