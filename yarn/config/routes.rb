Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'
  resources :users, only: [:index, :show]
  resources :choices, only: [:index, :show]
  resources :panels, only: [:index, :show]
  resources :players, only: [:index, :show]
  resources :stories, only: [:index, :show]
end
