Rails.application.routes.draw do
  resources :presentations
  devise_for :users
  resources :evaluations
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
