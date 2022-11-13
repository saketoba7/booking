Rails.application.routes.draw do

  
  
  get 'rooms/new'
  root 'home#top'
   devise_for :users,
    controllers: { registration: 'registration' }
    get '/users/:id', to: 'users#show', as: 'user'
    get '/reservations' => 'reservations#index' 
    resources :users
    resources :rooms, only: [:create, :new, :show, :index, :edit, :update, :destroy] do
      resources :reservations, only: [:new, :create,:index,:show, :edit, :update, :destroy]
      collection do
        get "search"
      end
    end

   
end
