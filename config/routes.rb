Rails.application.routes.draw do
  resources :sessions
  resources :cases
  resources :user_cases
  resources :users
  get '/info', to: 'application#info'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
