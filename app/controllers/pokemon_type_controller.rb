class PokemonTypeController < ApplicationController
  def index
    @pokemonTypes = PokemonType.all
  end
end
