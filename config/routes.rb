Rails.application.routes.draw do
  resources :groups
  resources :tasks
  resources :profile
  devise_for :users
  get '/user' => "profile#index", :as => :user_root

  root "welcome#index"
end
