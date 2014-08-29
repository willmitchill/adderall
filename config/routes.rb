Rails.application.routes.draw do

  resources :landing, only: [:show, :index]

  resources :universities do
    resources :courses do
      resources :notes
    end
  end

  resources :users, only: [:create, :new] 

  resources :cardsets
  resources :flashcards
  
  
  get '/profile', to: 'users#show'

  resources :sessions

  resources :questions

  resources :answers

  post '/upvotes', to: 'upvotes#create'


end
