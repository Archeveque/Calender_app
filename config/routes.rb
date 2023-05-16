Rails.application.routes.draw do
  get 'event/new'
  post '/event/create', to: 'event#create'
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  root to: "static_pages#index"
  get 'event/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
