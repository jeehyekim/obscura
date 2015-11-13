Rails.application.routes.draw do
  root to: 'cities#index'

  get '/users', to: 'users#index', as: 'users'

  get '/users/new', to: 'users#new', as: 'new_user'

  post '/users', to: 'users#create'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/sign_in', to: 'sessions#new', as: 'new_session'

  post '/sessions', to: 'sessions#create', as: 'sessions'

  get '/cities', to: 'cities#index', as: 'cities'

  get '/cities/new', to: 'libaries#new', 'new_library'

  # get '/logout', to: 'cities#index'

end
