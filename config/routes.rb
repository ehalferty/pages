Myapp::Application.routes.draw do
  devise_for :users
  resources :users
  resource :profile, :controller => 'users'

  root :to => 'users#index'

end
