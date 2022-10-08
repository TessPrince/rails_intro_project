class Pokemon < ApplicationRecord
  belongs_to :pokedex
  belongs_to :pokemon_types
end
