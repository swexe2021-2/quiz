Rails.application.routes.draw do
  resources :quizs
  root 'quizs#index'
end
