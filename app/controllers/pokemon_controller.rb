class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def search
    wildcard ="%#{params[:keywords]}%"

    @pokemons = Pokemon.where("name LIKE ?", wildcard)
  end
end
