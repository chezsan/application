Rails.application.routes.draw do
 
  resources :groups
  resources :users
  resources :internalusers
  resources :sessions
  
  root to: "groups#index"
  get "/logout", to: "sessions#destroy"

#  get '/group', to: 'group#index'
#  get '/group', to: 'group#index'
#  get '/group/new', to: 'group#new'
#  post '/group', to: 'group#create'
#  get '/group/:id', to: 'group#show'
#  get '/group/:id/edit', to: 'group#edit'
#  patch '/group/:id', to: 'group#update'
#  delete '/group/:id', to: 'group#destroy'

#  get 'internaluser/index'
#  get 'sessions/index'
  
 
end