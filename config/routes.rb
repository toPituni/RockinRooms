Rails.application.routes.draw do
  root to: 'pages#home'
  resources :rooms do
    resources :bookings, only: [ :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
