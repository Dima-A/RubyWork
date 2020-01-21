Rails.application.routes.draw do
  
  get "checks/create"    => "checks#create"
  post "checks/create"    => "checks#create"
  
  root 'checks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
