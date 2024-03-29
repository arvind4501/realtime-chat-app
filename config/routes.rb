Rails.application.routes.draw do
  get 'rooms/index'
  resources :rooms
  resources :users
  root 'rooms#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
end
