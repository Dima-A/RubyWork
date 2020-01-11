Rails.application.routes.draw do
  get 'checks/index'
  post "checks/index"    => "checks#index"
  
  resources :checks

  root 'checks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
