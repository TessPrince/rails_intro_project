class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.joins(:pokemon_types).find(params[:id])
    @types = PokemonType.joins(:types).where(pokemon_id: params[:id])
  end

  def search
    wildcard ="%#{params[:keywords]}%"
    type_wildcard = params[:type]

    if type_wildcard != ""
      @pokemons = Pokemon.joins(:pokemon_types).where("name LIKE ? AND type_id = ?", wildcard, type_wildcard)
   else
      @pokemons = Pokemon.where("name LIKE ?", wildcard)
   end

  end
end
