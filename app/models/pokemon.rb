class Pokemon < ApplicationRecord
  belongs_to :pokedex
  belongs_to :pokemon_types

  validates :name, :hit_points, :attack_strength, :defensive_strength, :special_attack_strength, :special_defensive_strength, presence:true
  validates :name, uniqueness: true
  validates :hit_points, :attack_strength, :defensive_strength, :special_attack_strength, :special_defensive_strength, numericality: {only_integer: true}
end
