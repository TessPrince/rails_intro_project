class Pokedex < ApplicationRecord
  has_many :pokemons

  validates :number, presence: true, uniqueness: true
end
