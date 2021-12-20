Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post 'users', to: 'user#create'
  get 'signup', to: 'user#new'
  get '/', to: 'user#index'

  get "/books", to: "books#index"
end
