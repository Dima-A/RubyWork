Rails.application.routes.draw do
  
  get "checks/create"    => "checks#create"
  post "checks/create"    => "checks#create"
  
  resources :users, only: [:new, :create]
  resources :user_sessions, only: [:create, :destroy]
  
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
  
  root 'checks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
