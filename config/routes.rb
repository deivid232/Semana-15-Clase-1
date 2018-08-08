Rails.application.routes.draw do
  resources :histories

  root "histories#index"
  get 'users/sign_up', to: "users#new"
  post 'users', to: "users#create"
  resources :sessions, only: [:create, :destroy]
  get 'users/sign_in', to: 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
