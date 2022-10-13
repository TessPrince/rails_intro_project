Rails.application.routes.draw do
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
end
