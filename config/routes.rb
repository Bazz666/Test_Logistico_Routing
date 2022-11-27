Rails.application.routes.draw do
  resources :organizations
  devise_for :users, controllers: {sessions: 'users/sessions' }
  resources :routes
  resources :vehicles
  resources :drivers
  root  :to => 'routes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
