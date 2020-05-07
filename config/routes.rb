Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :courses do
    resources :bookings, only: :create
  end
  resources :bookings, only: :destroy
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
