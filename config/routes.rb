Rails.application.routes.draw do
  
  root 'pages#home'
  
  get 'rsvp' => 'guests#new'

  get 'users/new'



  get 'signup' => 'users#new'


  resources :guests, :users
end
