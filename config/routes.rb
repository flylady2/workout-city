Rails.application.routes.draw do

  get 'trainers/signup' => 'trainers#new'
  get 'clients/signup' => 'clients#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  resources :gyms
  resources :clients
  resources :trainers
  resources :trainers, only: [:home] do
    resources :workouts, only: [:new, :create, :edit, :update, :destroy]
    resources :exercises, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :workouts, only: [:index, :show]
  resources :exercises, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
