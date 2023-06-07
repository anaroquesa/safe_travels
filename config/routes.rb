Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :itineraries do
    resources :reviews
  end
  resources :cities do
    resources :activities
  end
end
