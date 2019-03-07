# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroyed"

Venue.create(name:"Las Vegas Central", location_id: 11)
Venue.create(name: "Newports very own", location_id: 2)
Venue.create(name: "Ovo", location_id: 3)
Venue.create(name: "Something Comes this way", location_id: 3)
Venue.create(name: "VS", location_id: 3)
Venue.create(name: "Atom", location_id: 7)
Venue.create(name: "Markers Deluxe", location_id: 8)
Venue.create(name: "One One One", location_id: 4)
Venue.create(name: "Tea", location_id: 6)
Venue.create(name: "Gentlemans Agreement", location_id: 10)
Venue.create(name: "Macs", location_id: 10)
Venue.create(name: "PC", location_id: 9)
Venue.create(name: "WeWork", location_id: 8)
Venue.create(name: "Sceptre", location_id: 3)
Venue.create(name: "Expo", location_id: 6)
Venue.create(name: "Yoyo", location_id:5)
Venue.create(name: "10", location_id:8)
Venue.create(name: "9", location_id: 7)
Venue.create(name: "YoLo", location_id: 6)
Venue.create(name: "blah", location_id: 11)
Venue.create(name: "BosE", location_id: 9)
Venue.create(name: "wOOD", location_id: 1)
Venue.create(name: "WOOd", location_id: 5)
Venue.create(name: "YOYO", location_id: 7)

puts "done"