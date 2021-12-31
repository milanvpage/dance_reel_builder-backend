# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

commercial1 = Commercial.find_or_create_by(name: "Arianna Grande Video", file_name:"Ari vid", url:"test")
concert1 = Concert.find_or_create_by(name: "Paper Thin", file_name:"Paper Thin vid", url:"test")
theater1 = Theater.find_or_create_by(name: "Wicked Performance", file_name:"Wicked vid", url:"test")