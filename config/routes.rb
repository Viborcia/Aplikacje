Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :dissertations, only: [:new, :create, :destroy]
  resources :users
  
  namespace :admin do
    resources :users, only: [:new, :create, :destroy]
  end
<<<<<<< HEAD
=======

>>>>>>> 9d4a4227e0f5e8b35a63d9ae6cd5293ba455f68b
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

  get 'praca', to: 'dissertations#new', as: 'praca'

  get 'pomoc', to: 'users#pomoc', as: 'pomoc'

<<<<<<< HEAD
  #Promoter

  get 'promoter', to: 'users#promoter', as: 'promoter'

  patch 'dissertations/:id', to: 'dissertations#edit', as: 'update_dissertation'
  
  get 'studenci', to: 'dissertations#studenci', as: 'studenci'

  get 'wylogowanie', to: 'users#wylogowanie', as: 'wylogowanie'

   #Admin

   get 'admin', to: 'users#admin', as: 'admin'

   get 'wszyscy', to: 'users#wszyscy', as: 'wszyscy'
 
   get 'dodaj', to: 'users#dodaj', as: 'dodaj'
 
   get 'usun', to: 'users#usun', as: 'usun'
 
   get 'kontrola', to: 'dissertations#kontrola', as: 'kontrola'
 
   get 'konf', to: 'users#konf', as: 'konf'
 
   get 'wyl', to: 'users#wyl', as: 'wyl'
 
   get '/moon', to: 'users#moon', as: 'moon'
 
   get '/sun', to: 'users#sun', as: 'sun'
=======
  #Admin

  get 'admin', to: 'users#admin', as: 'admin'

  get 'wszyscy', to: 'users#wszyscy', as: 'wszyscy'

  get 'dodaj', to: 'users#dodaj', as: 'dodaj'

  get 'usun', to: 'users#usun', as: 'usun'

  get 'kontrola', to: 'dissertations#kontrola', as: 'kontrola'

  get 'konf', to: 'users#konf', as: 'konf'

  get 'wyl', to: 'users#wyl', as: 'wyl'

  get '/moon', to: 'users#moon', as: 'moon'

  get '/sun', to: 'users#sun', as: 'sun'
>>>>>>> 9d4a4227e0f5e8b35a63d9ae6cd5293ba455f68b

end
