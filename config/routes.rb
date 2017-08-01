Rails.application.routes.draw do
  
  root 'edamaters#index'

  # Edamaters
  get '/edamaters' => 'edamaters#index'
  get '/edamaters/new' => 'edamaters#new'
  get '/edamaters/:id' => 'edamaters#show'
  post '/edamaters' => 'edamaters#create'

  # Session
  get '/session/new' => 'sessions#new'
  post '/session' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # <li><a rel="nofollow" data-method="delete" href="/logout">Sign Out</a></li>


  # User - register and show
  get '/user' => 'users#new'
  post '/user' => 'users#create'
  get '/user/:id' => 'users#show'

  # resources :edamaters

  # get '/help' => 'user_stories#index'

  # # Sessions

  # get '/sessions/new' => 'sessions#new', as: 'new_session'
  # post '/sessions' => 'sessions#create'

  # delete '/logout' => 'sessions#destroy'

  # get '/asdf' => 'products#index'

  # resources :products
  # resources :reviews
  # resources :users
  # resources :orders

end
