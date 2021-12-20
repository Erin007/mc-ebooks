Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post 'users', to: 'users#create'
  get 'signup', to: 'users#new'
  get '/', to: 'users#index'
  get '/results', to: 'books#show'
  get "/books", to: "books#index"
end
