Rails.application.routes.draw do


  get "dashboard", to: "dashboards#show"

  devise_for :users
  resources :dogs do
    resources :appointments, only: [:create]
  end
  resources :appointments, only: [:show]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
