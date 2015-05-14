Rails.application.routes.draw do
  
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 'pages#home'
  
  get 'day' => 'pages#day'
  
  get 'lodge' => 'pages#lodging'
  
  get 'party' => 'pages#party'
  
  get 'rsvp' => 'guests#new'
  
  get 'gift' => 'pages#gifts'

  get 'users/new'

  get 'guest/show'

  get 'signup' => 'users#new'
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


  resources :guests, :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
