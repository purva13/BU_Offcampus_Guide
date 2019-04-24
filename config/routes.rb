Rails.application.routes.draw do
  


  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #resources :users
  #get '/login', :to => 'sessions/#new', :as => 'login'
  match 'auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  match 'auth/failure', :to => 'sessions/#failure', :via => [:get, :post]
  #get 'sessions/destroy', :as => 'logout', :via => [:get, :post]
  get '/login', :to => 'sessions#new', :as => :login
  get '/logout', :to => 'sessions#destroy', :as => :logout
  get '/cleanup', :to => 'sessions#cleanup', :as => :cleanup
 
  resources :users
  
  get 'dashboard/index'

  get 'welcome/login', :as => :welcome_login
  root 'welcome#login'
  
  #get 'welcome/index'
  #get 'welcome/index' => 'welcome#index'
  get 'users/new_user' => 'users#new_user'
  get 'users/guest' => 'users#guest'
  get 'users/login' => 'users#login'
  #get    'users/login',   to: 'sessions#new'
  #post   'users/login',   to: 'sessions#create'
  #delete 'users/logout',  to: 'sessions#destroy'
  #root 'welcome#index'
end