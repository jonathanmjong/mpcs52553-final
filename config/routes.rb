Rails.application.routes.draw do
  
  root 'edamaters#index'

  # Edamaters
  get '/edamaters' => 'edamaters#index'
  get '/edamaters/new' => 'edamaters#new'
  get '/edamaters/:id' => 'edamaters#show'
  post '/edamaters' => 'edamaters#create'
  get '/edamaters/:id/edit' => 'edamaters#edit'
  patch '/edamaters/:id' => 'edamaters#update'
  delete '/edamaters/:id' => 'edamaters#destroy'
  # <a class="btn btn-warning" href="/edamaters/<%= @edamater.id %>/edit">Edit EdaMater Profile</a>
  # <form class="delete-form" action="/edamaters/<%= @edamater.id %>/delete" method="post">
  #   <button class="btn btn-danger">Delete EdaMater Profile</button>
  # </form>

  # Reviews
  get '/edamaters/:id/reviews/new' => 'reviews#new'
  patch '/edamaters/:id/reviews/:review_id/edit' => 'reviews#update'
  post '/edamaters/:id/reviews' => 'reviews#create'

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
