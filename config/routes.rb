Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :itineraries do
    resources :activities
    resources :reviews
  end
  resources :cities, only: [:index, :show]
end
