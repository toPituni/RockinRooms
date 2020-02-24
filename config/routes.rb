Rails.application.routes.draw do
  root to: 'pages#home'
  get 'rooms', to: 'rooms#index'
  get 'rooms/create', to: 'rooms#create'
  get 'rooms/new', to: 'rooms#new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
