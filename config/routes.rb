Myapp::Application.routes.draw do
  get "users/index"

  get "users/show"

  get "users/update"

  get "users/edit"

  get "welcome/index"

  devise_for :users
  resources :users

  root :to => 'users#index'

end
