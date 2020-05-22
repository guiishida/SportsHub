Rails.application.routes.draw do
  resources :facilities
  resources :sports
  devise_for :users
  resources :users
  root 'home#index'
  get 'home/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
