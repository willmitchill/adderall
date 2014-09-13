Rails.application.routes.draw do

resources :password_resets

  root :to => "landing#index"

  resources :landing, only: [:show, :index]

  resources :universities do
    resources :courses do
      resources :notes
      resources :questions do
        resources :answers
      end
    end
  end

  resources :users, only: [:create, :new]

  resources :cardsets
  resources :flashcards

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'



  get '/profile', to: 'users#show'

  resources :sessions

  namespace :admin do
    resources :users
  end





  post '/upvotes', to: 'upvotes#create'


end
