Rails.application.routes.draw do
  
  get 'rooms/new'
  root 'home#top'
  
    devise_for :users,
    controllers: { registration: 'registration' }
    get '/users/:id', to: 'users#show', as: 'user'
  
    resources :users
    resources :rooms, only: [:create, :new, :show, :index, :edit, :update, :destroy]
end
