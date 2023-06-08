Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :itineraries do
    resources :reviews
    resources :itactivities, only: %i[new index create destroy]
  end
  resources :cities do
    resources :activities, only: %i[edit new]
  end

  resources :users, only: %i[show edit update]
end
