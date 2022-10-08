class PokemonType < ApplicationRecord
  has_many :pokemons
  belongs_to :types
  belongs_to :pokemons

end
