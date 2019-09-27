# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
	{
		"name" => "Bill",
		"email" => "bill@bill.com",
		"password" => "password"
	},
    {
		"name" => "Lass",
		"email" => "lass@lass.com",
		"password" => "password"
	},
    {
		"name" => "Red",
		"email" => "red@red.com",
		"password" => "password"
	}
]

users.each do |x|
	user = User.create(name: x["name"], email: x["email"], password: x["password"])
end

pokes = [
	{
		"name" => "Bulbasaur",
		"location" => "Professor Oak",
		"found" => "Yes",
		"likes" => 0,
		"user_id" => 1
	},
    {
		"name" => "Pikachu",
		"location" => "Viridian Forest",
		"found" => "Not Found",
		"likes" => 0,
		"user_id" => 2
	},
    {
		"name" => "Dratini",
		"location" => "Safari Zone",
		"found" => "Not Found",
		"likes" => 0,
		"user_id" => 3
	}
]

pokes.each do |x|
	poke = Poke.create(name: x["name"], location: x["location"], found: x["found"], likes: x["likes"], user_id: x["user_id"])
end


