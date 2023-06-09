Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :itineraries do
    resources :reviews
    resources :it_activities, only: %i[new index create destroy]
  end

  resources :cities do
    resources :activities, only: %i[edit new]
  end

  resources :activities, only: %i[new create edit update destroy]
  resources :users, only: %i[show edit update]
  resources :chatrooms, only: [:index, :show, :create]

  #get "users/:id", to: "users#show", as: "user"
end
