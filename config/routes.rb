Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'pages#home'
  
  get 'day' => 'pages#day'
  
  get 'rsvp' => 'guests#new'

  get 'users/new'

  get 'guest/show'

  get 'signup' => 'users#new'
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


  resources :guests, :users
end
