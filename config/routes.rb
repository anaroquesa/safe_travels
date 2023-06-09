Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/home", to: "pages#home", as: :home

  resources :itineraries do
    resources :reviews
    resources :it_activities, only: %i[new index create destroy]
  end

  resources :cities do
    resources :activities, only: %i[edit new]
  end

  resources :activities, only: %i[new create edit update destroy]
  resources :users, only: %i[show edit update]
  resources :chatrooms, only: %i[index show create]

  resources :chatrooms, only: %i[show edit update] do
    resources :messages, only: :create
  end
end
