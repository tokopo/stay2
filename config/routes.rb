Rails.application.routes.draw do
  root to: 'home#top'
  resources :rooms
  get 'users/account'
  get 'users/profile'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lives do
    get :search, on: :collection
  end
end
