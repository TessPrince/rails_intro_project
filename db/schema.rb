# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_08_181122) do
  create_table "pokedexes", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_name_id", null: false
    t.integer "type_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_name_id"], name: "index_pokemon_types_on_pokemon_name_id"
    t.index ["type_type_id"], name: "index_pokemon_types_on_type_type_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "hit_points"
    t.integer "attack_strength"
    t.integer "defensive_strength"
    t.integer "special_attack_strength"
    t.integer "special_defensive_strength"
    t.integer "pokedex_id", null: false
    t.integer "pokemon_types_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokedex_id"], name: "index_pokemons_on_pokedex_id"
    t.index ["pokemon_types_id"], name: "index_pokemons_on_pokemon_types_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemon_types", "pokemon_names"
  add_foreign_key "pokemon_types", "type_types"
  add_foreign_key "pokemons", "pokedexes"
  add_foreign_key "pokemons", "pokemon_types", column: "pokemon_types_id"
end
