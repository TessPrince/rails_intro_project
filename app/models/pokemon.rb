class Pokemon < ApplicationRecord
  belongs_to :pokedex

  validates :hit_points, :attack_strength, :defensive_strength, :special_attack_strength, :special_defense_strength, :name, presence: true
  validates :name, uniqueness: true
  validates :hit_points, :attack_strength, :defensive_strength, :special_attack_strength, :special_defense_strength, numericality: {only_integer: true}

end
