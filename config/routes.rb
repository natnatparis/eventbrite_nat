Rails.application.routes.draw do
  #route home page
  get 'home/index'
  get 'home/private'

  #route devise 
  #devise_for :users
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  
  #redirect home page
  root to: 'home#index' 
  resources :events
  resources :attendances
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
