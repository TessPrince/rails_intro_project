require "csv"

Pokemon.delete_all
Pokedex.delete_all
Pokemon_type.delete_all
Type.delete_all

filename = Rails.root.join("db/Pokemon.csv")
puts "Loading the Pokemon from the csv file: #{filename}"