Rails.application.routes.draw do
  resources :exercises
  resources :gyms

  resources :clients
  resources :trainers
  resources :trainers, only: [:show] do
    resources :workouts, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :workouts, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
