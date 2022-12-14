require "csv"

PokemonType.delete_all
Pokemon.delete_all
Pokedex.delete_all
Type.delete_all

filename = Rails.root.join("db/Pokemon.csv")
puts "Loading the Pokemon from the csv file: #{filename}"

csv_data = File.read(filename)
pokemon = CSV.parse(csv_data, headers:true, encoding: "utf-8")

pokemon.each do |p|
  pokedex_number = Pokedex.find_or_create_by(number: p["#"])
  if pokedex_number && pokedex_number.valid?
    #creates the pokemon
    pokemon = pokedex_number.pokemons.create(
      name: p["Name"],
      hit_points: p["HP"],
      attack_strength: p["Attack"],
      defensive_strength: p["Defense"],
      special_attack_strength: p["Sp. Atk"],
      special_defensive_strength: p["Sp. Def"]
    )
    puts "Invalid Pokemon #{p['Name']}" unless pokemon&.valid?
  else
    puts "Invalid pokedex #{p['#']} for pokemon #{p["Name"]}"
  end

  types = p["Type"].split(",").map(&:strip)
  types.each do |type_name|
    type = Type.find_or_create_by(name: type_name)

    PokemonType.create(pokemon: pokemon, type: type)
  end

end
