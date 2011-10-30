Mugatu::Application.routes.draw do
  resources :users

  match '/signup',  :to => 'users#new'

  match '/contact', :to => 'pages#contact'
  match '/support',   :to => 'pages#support'
  
  root :to => 'pages#home'

end
