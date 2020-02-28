Rails.application.routes.draw do
  get 'dashboard/index'
  root to: 'pages#home'
  devise_for :users
  resources :rooms do
    resources :bookings, only: [ :new, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :bookings, only: :destroy
  resources :dashboard, only: :index
end
