Rails.application.routes.draw do
  get 'home/index'

  resources :questions
  devise_for :users
  root to: "home#index"
end
