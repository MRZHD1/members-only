Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
  resources :posts, only: [:new, :create, :index]
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
