Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get "/about",to: 'pages#about_us'
  get "/students",to: 'pages#students'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bcas
  resources :mcas
end
