# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Room.destroy_all
User.destroy_all

u1 = User.create!(email: 'jan@gmail.com', password: 'whatever')
u2 = User.create!(email: 'jan1@gmail.com', password: 'whatever')
u3 = User.create!(email: 'jan2@gmail.com', password: 'whatever')


puts "#{User.count} users just created"


r1 = Room.create!(name: 'super Beautiful Rehearsal Room', description: "description", address: "address", price: 75, equipment: "equipment available", district: "Mitte", user: u1 )
r2 = Room.create!(name: 'very Beautiful Rehearsal Room', description: "description", address: "address", price: 50, equipment: "equipment available", district: "Prenzlauer Berg", user: u2 )
r3 = Room.create!(name: 'Beautiful Rehearsal Room', description: "description", address: "address", price: 30, equipment: "equipment available", district: "Wedding", user: u3 )
r4 = Room.create!(name: 'super Beautiful Rehearsal Room', description: "description", address: "address", price: 75, equipment: "equipment available", district: "Mitte", user: u1 )
r5 = Room.create!(name: 'very Beautiful Rehearsal Room', description: "description", address: "address", price: 50, equipment: "equipment available", district: "Prenzlauer Berg", user: u2 )
r6 = Room.create!(name: 'Beautiful Rehearsal Room', description: "description", address: "address", price: 30, equipment: "equipment available", district: "Wedding", user: u3 )

puts "#{Room.count} rooms just created"

Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u1, room: r1)
Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u2, room: r2)
Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u3, room: r3)
Booking.create!(start_time: "2020-02-12 10:00", end_time: "2020-02-12 11:00", user: u3, room: r4)
