Mugatu::Application.routes.draw do |map|
  require 'subdomain'
  resources :users
  resources :accounts

  match '/signup',  :to => 'accounts#new'

  match '/contact', :to => 'pages#contact'
  match '/support',   :to => 'pages#support'

  constraints(Subdomain) do
    match '/' => 'accounts#show'  
  end
 
  root :to => 'pages#home'

end
