Rails.application.routes.draw do
  get 'houses/index'

  resources :houses
  resources :profiles
  devise_for :users
  root to: 'houses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
