Rails.application.routes.draw do
  resources :groups, only: [:create, :index, :show, :destroy, :new]
  resources :tasks, only: [:create, :index, :show, :destroy, :new]
  resources :groups do
    resources :tasks
  end
  resources :profile, only: [:index]
  resources :external_transactions, only: [:index]
  devise_for :users
  get '/user' => "profile#index", :as => :user_root

  root "welcome#index"
end
