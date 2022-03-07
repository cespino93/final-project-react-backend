# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Chris", username: "cespino", password: "password")

miami = Location.create(city: "Miami", state: "Flordia", country: "USA")
kanye = maimi.celebrities.create(name: "Kanye West", description: "Listening Session for New Album")
chris = User.first
chris.events.create