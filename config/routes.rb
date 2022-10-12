Rails.application.routes.draw do
  get "pokemon", to: "pokemon#index", as: "pokemons"
  get "pokemon:id", to: "pokemon#show", as: "pokemon", constraints: { id: /\d+/ }
  get "pokedex:id", to: "pokedex#show", as: "pokedex", constraints: { id: /\d+/ }
  get "about", to: "about#index", as: "about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pokemon#index"
  #resources pokedex, only: [:show]
end
