Rails.application.routes.draw do
  get 'search/index'

  resources :services
  resources :service_requests
  resources :service_areas
  resources :neighbourhoods
  resources :wards
  resources :parking_contraventions
  resources :violations
  get 'search', to: 'search#index', as: 'search'
  root to: 'parking_contraventions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
