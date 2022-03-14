# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Chris", username: "cespino", password: "12345")

miami = Location.create(city: "Miami", state: "Flordia", country: "USA")
kanye = miami.celebrities.create(name: "Kanye West", description: "Listening Session for New Album")
kanye = Celebrity.first
chris = User.first
chris_kanye = chris.events.create(start_date: Date.new("2022-03-06"), end_date: Date.new("2022-03-07"))

chris_kanye.attends.create(celebrity: kanye, date: "2022-03-06")
chris.comments.create(content: "Many more celebrites said to show up!", celebrity: kanye)