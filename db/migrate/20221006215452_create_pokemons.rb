class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hit_points
      t.integer :attack_strength
      t.integer :defensive_strength
      t.integer :special_attack_strength
      t.integer :pecial_defensive_strength
      t.references :number, null: false, foreign_key: true


      t.timestamps
    end
  end
end
