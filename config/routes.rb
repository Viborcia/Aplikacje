Rails.application.routes.draw do
  devise_for :users
  resources :dissertations
  resources :users
  #Ogólna

  root 'static_pages#index'

  get 'welcome', to: 'static_pages#welcome', as: 'welcome'

  get 'index', to: 'static_pages#index', as: 'index'
  
  get 'authors', to: 'static_pages#authors', as: 'authors'

  get 'logowanie', to: 'static_pages#logowanie', as: 'logowanie'

  get 'help', to: 'static_pages#help', as: 'help'

  #Student

  get 'student', to: 'users#student', as: 'student'

  get 'materialy', to: 'users#materialy', as: 'materialy'

  get 'harmonogram', to: 'users#harmonogram', as: 'harmonogram'

  get 'instrukcja', to: 'users#instrukcja', as: 'instrukcja'

  get 'wyloguj', to: 'users#wyloguj', as: 'wyloguj'

  get 'praca', to: 'users#praca', as: 'praca'

  get 'users/student'
end
