Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :dashboards, only: [:show]
  resources :workspaces do
    resources :workspace_reviews, only: [:new, :create]
    resources :places, only: [:show, :new, :create]
  end

  resources :places, only: [:new, :create]
  
  resources :places, only: [] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [] do
    resources :payments, only: [:new, :create]
  end
    resources :profiles, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :user_reviews, only: [:index, :new, :create]
  end

  get "workspace_reviews/error", to: "workspace_reviews#error"
  get "workspaces/payment_accepted/:id", to: "workspaces#payment_accepted", as: :workspaces_payment_accepted
  get "workspaces/payment_error/:id", to: "workspaces#payment_error",  as: :workspaces_payment_error


  # resources :flats, only: [:index, :new, :create, :show, :destroy] do
  #   resources :reviews, only: [:index, :new,  :create]
  #   resources :bookings, only: [:index, :new, :create]
  # end

  # resources :profiles, only: [:show, :update, :create, :new, :edit]
  # get "bookings/error", to: "bookings#error"
  # get "reviews/error", to: "reviews#error"

end
