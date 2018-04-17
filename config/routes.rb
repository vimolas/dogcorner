Rails.application.routes.draw do


  get "dashboard", to: "dashboards#show"

  devise_for :users
  resources :dogs
  resources :appointments
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
