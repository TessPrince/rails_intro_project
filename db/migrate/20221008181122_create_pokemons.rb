class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hit_points
      t.integer :attack_strength
      t.integer :defensive_strength
      t.integer :special_attack_strength
      t.integer :special_defensive_strength
      t.references :pokedex, null: false, foreign_key: true

      t.timestamps
    end
  end
end
