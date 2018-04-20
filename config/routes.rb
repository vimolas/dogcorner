Rails.application.routes.draw do


  get 'homes/show'

  get "dashboard", to: "dashboards#show"

  devise_for :users

  resources :dogs do
    resources :appointments, only: [:new, :create]
  end
  resources :appointments, only: [:show, :edit, :update, :destroy]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
