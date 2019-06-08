# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pokes = [
	{
		"name" => "Bulbasaur",
		"location" => "Professor Oak",
		"found" => "Yes"
	},
    {
		"name" => "Pikachu",
		"location" => "Viridian Forest",
		"found" => "Not Found"
	},
    {
		"name" => "Dratini",
		"location" => "Safari Zone",
		"found" => "Not Found"
	}
]

pokes.each do |x|
	poke = Poke.create(name: x["name"], location: x["location"], found: x["found"])
end
