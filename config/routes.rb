Rails.application.routes.draw do

  get 'trainer/signup' => 'trainers#new'
  get 'client/signup' => 'clients#new'
  get 'trainer/login' => 'sessions#new_trainer'
  post 'trainer/login' => 'sessions#create_trainer'
  get 'client/login' => 'sessions#new_client'
  post 'client/login' => 'sessions#create_client'
  get 'trainers/home' => 'trainers#home'



  resources :gyms
  resources :clients
  resources :trainers
  get '/trainers/:id/home', to: 'trainers#home'
  resources :trainers, only: [:home] do
    resources :workouts, only: [:new, :create, :edit, :update, :destroy]
    resources :exercises, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :workouts, only: [:index, :show]
  resources :exercises, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
