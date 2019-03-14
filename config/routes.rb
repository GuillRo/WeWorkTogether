Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:show, :update, :create, :new, :edit]
  resources :workspaces do
    resources :workspace_reviews, only: [:new, :create]
    resources :places, only: [:show, :new, :create]
  end

  resources :places, only: [] do
    resources :bookings, only: [:new, :create]
  end
  resources :payments
  resources :profiles, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :user_reviews, only: [:index, :new, :create]

  end

  get "workspace_reviews/error", to: "workspace_reviews#error"

  # resources :flats, only: [:index, :new, :create, :show, :destroy] do
  #   resources :reviews, only: [:index, :new,  :create]
  #   resources :bookings, only: [:index, :new, :create]
  # end

  # resources :profiles, only: [:show, :update, :create, :new, :edit]
  # get "bookings/error", to: "bookings#error"
  # get "reviews/error", to: "reviews#error"

end
