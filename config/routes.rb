Rails.application.routes.draw do
  resources :exercises
  resources :gyms
  resources :workouts
  resources :clients
  resources :trainers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
