Mugatu::Application.routes.draw do |map|

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

  require 'subdomain'
  resources :users
  resources :accounts
  resources :sessions
  resources :recipes
  resources :items
  resources :ingredients

  match '/signup',  :to => 'accounts#new'
  match '/login', :to => 'sessions#new'
  match '/logout', :to => 'sessions#destroy'

  constraints(Subdomain) do
    match '/' => 'accounts#show'  
  end
 
  root :to => 'pages#home'

end
