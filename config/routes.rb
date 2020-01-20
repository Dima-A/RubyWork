Rails.application.routes.draw do
  
  post "checks/new"    => "checks#new"
  resources :checks

  root 'checks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
