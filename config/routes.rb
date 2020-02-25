Rails.application.routes.draw do
  get 'search', to: 'bookings#search', as: :search_room
  get 'bookings/new', to: 'bookings#new'
  get 'bookings/create', to: 'bookings#create'
  get 'bookings/show', to: 'bookings#show'
  root to: 'pages#home'
  get 'rooms', to: 'rooms#index'
  get 'rooms/create', to: 'rooms#create'
  get 'rooms/new', to: 'rooms#new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
