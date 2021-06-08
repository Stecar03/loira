Rails.application.routes.draw do
  resources :utentes
  resources :tappes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index', to: 'home#index', as: 'index'

  get '/home/tappes'
  
  get '/home/utentes'

  root 'home#index'
end
