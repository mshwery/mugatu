Mugatu::Application.routes.draw do  
  get "recipes/new"
  get "recipes/show"
  get "recipes/edit"
  get "items/show"
  get "items/edit"
  get "items/new"
  get "recipes/items"
  get "recipes/users"
  get "items/index"

  resources :accounts
  resources :users
  resources :sessions
  resources :recipes
  resources :items
  resources :ingredients
  resources :vendors

  match '/dashboard', :to => 'accounts#index'

  resource :user do
    match '/edit', :to => 'users#edit', :as => 'edit'
  end
  
  resource :recipe do
    match '/edit', :to => 'recipes#edit', :as => 'edit'
  end

  match '/signup', :to => 'accounts#new', :as => 'signup'
  match '/login', :to => 'sessions#new', :as => 'login'
  match '/logout', :to => 'sessions#destroy', :as => 'logout'
 
  root :to => 'pages#home'

end
