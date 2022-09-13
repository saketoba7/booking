Rails.application.routes.draw do
  root 'home#top'
  
    devise_for :users,
    controllers: { registration: 'registration' }
    get '/users/:id', to: 'users#show', as: 'user'
end
