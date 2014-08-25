Rails.application.routes.draw do
  resources :landing, only: [:show, :index]

  resources :universities do
    resources :courses do
      resources :notes
    end
  end

   resources :users, only: [:create, :new]

  get '/profile', to: 'users#show'

  resources :sessions

  

end
