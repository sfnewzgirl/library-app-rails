Rails.application.routes.draw do
  root to: 'users#index', as: 'root'

  get '/users', to: 'users#index', as: 'users'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create', as: 'sessions'

end
