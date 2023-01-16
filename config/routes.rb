Rails.application.routes.draw do
  devise_for :users
  resources :summaries
  root to: "summaries#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get '/users/:id', to: 'users#show'
end
