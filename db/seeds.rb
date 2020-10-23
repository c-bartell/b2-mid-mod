# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Mechanics
mechanic1 = Mechanic.create!(name: 'Steve Smith', years_of_experience: 5)
mechanic2 = Mechanic.create!(name: 'Olivia Carter', years_of_experience: 20)
mechanic3 = Mechanic.create!(name: 'Dan Seagrave', years_of_experience: 2)

# Amusement Parks
amusement_park = AmusementPark.create!(name: "Wonder Wharf", admission_price: 50.00)

# Rides
ride1 = amusement_park.rides.create!(name: "Tickle Boat", thrill_rating: 10)
ride2 = amusement_park.rides.create!(name: "Tea Cups", thrill_rating: 3)
ride3 = amusement_park.rides.create!(name: "Bumper Cars", thrill_rating: 5)
