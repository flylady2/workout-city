Rails.application.routes.draw do

  get 'trainer/signup' => 'trainers#new'
  get 'client/signup' => 'clients#new'
  get 'trainer/login' => 'sessions#new_trainer'
  post 'trainer/login' => 'sessions#create_trainer'
  get 'client/login' => 'sessions#new_client'
  post 'client/login' => 'sessions#create_client'

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
