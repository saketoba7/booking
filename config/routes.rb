Rails.application.routes.draw do
  
  get 'rooms/new'
  root 'home#top'
  
    devise_for :users,
    controllers: { registration: 'registration' }
    get '/users/:id', to: 'users#show', as: 'user'
    get 'rooms/:id', to: 'rooms#new', as: 'room'
    resources :users
    resources :rooms , only: [:create, :new, :edit, :update, :destroy]
    
end
