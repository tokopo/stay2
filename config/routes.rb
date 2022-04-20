Rails.application.routes.draw do
  root to: 'home#top'
  resources :rooms
  namespace :users do
    resource :profile, only: [:show, :update]
    resource :account, only: :show
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lives do
    get :search, on: :collection
  end
end
