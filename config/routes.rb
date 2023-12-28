Rails.application.routes.draw do
  devise_for :users
  resources :dissertations
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'static_pages#welcome'
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
end
