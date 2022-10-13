Rails.application.routes.draw do
  get 'pokemon_type/index'
  get 'type/index'
  # Defines the root path route ("/")
  root to: "pokemon#index"

  get "about", to: "about#index", as: "about"

  resources :pokemon, only: [:index, :show] do
    #pokemon/search/(:format)
    collection do
        get "search"
      end
    end

  resources :pokedex, only: [:show]
  resources :type, only: [:index]
  resources :pokemon_type, only: [:index]
end
