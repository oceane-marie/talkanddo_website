Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :teachers, only: [:index, :show, :create, :new] do
    resources :reservations, only: [:create]
  end
  resources :users, only: [:show] do
    member do
      get :past_reservations
    end
    member do
      get :pending_reservations
    end
    resources :teachers, only: [:create]
    member do
      get :as_teacher
    end
  end
end
