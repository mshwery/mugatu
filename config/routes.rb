Mugatu::Application.routes.draw do |map|

  require 'subdomain'
  resources :users
  resources :accounts
  resources :sessions

  match '/signup',  :to => 'accounts#new'
  match '/login', :to => 'sessions#new'
  match '/logout', :to => 'sessions#destroy'

  constraints(Subdomain) do
    match '/' => 'accounts#show'  
  end
 
  root :to => 'pages#home'

end
