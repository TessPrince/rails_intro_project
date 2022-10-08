class PokedexController < ApplicationController
  def show
    @pokedex = Pokedex.find(params[:id])
  end
end
