Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'stories#index'
  resources :users



  resources :stories do
    resources :players
    resources :panels do
      resources :choices
    end

  end
end
