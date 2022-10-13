class PokemonTypeController < ApplicationController
  def index
    @pokemon_types = PokemonType.all
    @pokemons = Pokemon.joins(:pokemon_types)
    @types = Type.joins(:pokemon_types)
  end
end
