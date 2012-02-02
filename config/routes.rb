Mugatu::Application.routes.draw do
  require 'subdomain'
  
  get "recipes/new"
  get "recipes/show"
  get "recipes/edit"
  get "users/new"
  get "users/show"
  get "users/edit"
  get "items/show"
  get "items/edit"
  get "items/new"
  get "recipes/items"
  get "recipes/users"

  resources :accounts
  resources :users
  resources :sessions
  resources :recipes
  resources :items
  resources :ingredients

  match '/signup',  :to => 'accounts#new', :as => 'signup'
  match '/login', :to => 'sessions#new', :as => 'login'
  match '/logout', :to => 'sessions#destroy', :as => 'logout'

  constraints(Subdomain) do
    match '/' => 'accounts#show'  
  end
 
  root :to => 'pages#home'

end
