Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/home", to: "pages#home", as: :home
  get "/profiles", to: "pages#profiles"

  resources :itineraries do
    resources :reviews
    resources :it_activities, only: %i[new index create destroy edit update]
  end

  resources :cities do
    resources :activities, only: %i[edit new]
  end

  resources :activities, only: %i[new create edit update destroy]
  resources :users, only: %i[show edit update] do
    resources :messages, only: %i[index create]
    resources :chatrooms, only: %i[index show create]
  end
  resources :chatrooms, only: %i[index show edit update] do
    resources :messages, only: :create
  end
  mount ActionCable.server => '/cable'
end
