Rails.application.routes.draw do
  patch 'users/:id', to: 'users#user_update'
  devise_for :users
  root to: "pages#home"
  get "/home", to: "pages#home", as: :home
  get "/profiles", to: "pages#profiles"
  get "/emergency", to: "pages#emergency"
  get '/itineraries', to: 'itineraries#index', as: :itineraries

  post '/status_update', to: 'itineraries#status_update'


  resources :itineraries do
    resources :reviews
    resources :it_activities, only: %i[new index create destroy edit update]
  end

  resources :cities do
    resources :activities, only: %i[edit new]
  end

  resources :activities, only: %i[new create edit update destroy index]
  resources :users, only: %i[show edit update] do
    resources :messages, only: %i[index create]
    resources :chatrooms, only: %i[index show create]
  end
  resources :chatrooms, only: %i[index show edit update] do
    resources :messages, only: :create
  end
  # mount ActionCable.server => '/cable'
end
