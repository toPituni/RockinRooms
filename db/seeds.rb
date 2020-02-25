# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Room.destroy_all
User.destroy_all

u1 = User.create!(email: 'jan@gmail.com', password: 'whatever')
u2 = User.create!(email: 'jan1@gmail.com', password: 'whatever')
u3 = User.create!(email: 'jan2@gmail.com', password: 'whatever')

puts "#{User.count} users just created"


Room.create!(name: 'super Beautiful Rehearsal Room', description: "description", address: "address", price: 75, equipment: "equipment available", district: "district Mitte", user: u1 )
Room.create!(name: 'very Beautiful Rehearsal Room', description: "description", address: "address", price: 50, equipment: "equipment available", district: "district Mitte", user: u2 )
Room.create!(name: 'Beautiful Rehearsal Room', description: "description", address: "address", price: 30, equipment: "equipment available", district: "district Mitte", user: u3 )

puts "#{Room.count} rooms just created"
