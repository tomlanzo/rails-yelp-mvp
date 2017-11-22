Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants do
    member do
      resources :reviews, only: :create
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
