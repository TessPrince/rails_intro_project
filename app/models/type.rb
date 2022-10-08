class Type < ApplicationRecord
  has_many :pokemon_types

  validates :type, presence: true
  validates :type, uniqueness: true
end
