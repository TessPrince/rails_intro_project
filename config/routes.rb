Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pokemon#index"

  get "pokemon", to: "pokemon#index", as: "pokemon"
  get "about", to: "about#index", as: "about"

  resources :pokemon, only: [:index, :show]
  #pokemon/search/(:format)
  # collection do
  #       get get "search"
  #     end
  #   end

  resources :pokedex, only: [:show]
end
