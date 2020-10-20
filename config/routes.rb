# frozen_string_literal: true

Rails.application.routes.draw do
  resources :groups
  resources :tasks
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root "tasks#index"
end
