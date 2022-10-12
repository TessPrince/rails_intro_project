Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pokemon#index"

  get "pokemon", to: "pokemon#index", as: "pokemon"
  #get "pokedex:id", to: "pokedex#show", as: "pokedex", constraints: { id: /\d+/ }
  get "about", to: "about#index", as: "about"

 resources :pokemon, only: [:index, :show]
 resources :pokedex, only: [:show]

  #resources pokedex, only: [:show]
end
