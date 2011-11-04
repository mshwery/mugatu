Mugatu::Application.routes.draw do
  resources :users
  resources :accounts

  match '/signup',  :to => 'accounts#new'

  match '/contact', :to => 'pages#contact'
  match '/support',   :to => 'pages#support'
  
  root :to => 'pages#home'

end
