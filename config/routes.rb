Rails.application.routes.draw do
  root to: 'cities#index'

  get '/users', to: 'users#index', as: 'users'

  get '/users/new', to: 'users#new', as: 'new_user'

  post '/users', to: 'users#create'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/sign_in', to: 'sessions#new', as: 'new_session'

  resources :sessions, only: [:new, :create, :destroy]

  get '/cities', to: 'cities#index', as: 'cities'

  get '/cities/new', to: 'cities#new', as:'new_city'

  post '/cities', to: 'cities#create'

  get '/cities/:id', to: 'cities#show', as: 'city'

  get '/cities/:city_id/features/:feature_id/posts/new', to: 'posts#new', as: 'new_post'
  
  post '/cities/:city_id/features/:feature_id/posts', to: 'posts#create'
  # get '/logout', to: 'cities#index'
end