Rails.application.routes.draw do
  get 'pokedex/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources pokedex, only: [:show]
end
