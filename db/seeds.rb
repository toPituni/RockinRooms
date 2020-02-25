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



r1 = Room.create!(image_url: 'https://images.pexels.com/photos/164938/pexels-photo-164938.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', name: 'Professional Studio', description: "Fully equipped studio with amazing sound qualities. Suitable for professional music production.5sqm", address: "Rudi-Dutschke-Strasse 5", price: 75, equipment: "fully equipped", district: "Mitte", user: u1 )
r2 = Room.create!(image_url: 'https://images.pexels.com/photos/1327426/pexels-photo-1327426.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', name: 'Amazing Rehearsal Room', description: "Partly equipped rehearsal room for bands. 35sqm", address: "Linienstrasse 89", price: 50, equipment: "Drum Kit, Microphones, 2 x amplifiers ", district: "Mitte", user: u2 )
r3 = Room.create!(image_url: 'https://images.pexels.com/photos/1267297/pexels-photo-1267297.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',name: 'Outdoor Rehearsal Room', description: "Enjoy this hawaiian atmoshere in Mitte", address: "Friedrichstrasse 180", price: 30, equipment: "contrabass, drum kit, keyboard", district: "Mitte", user: u3 )
r4 = Room.create!(image_url: 'https://noisy-musicworld.com/rooms/files/10s-1024x683.jpg',name: 'Soundproof Room', description: "Rock through the night in this soundproof rehearsal room", address: "Unter den Linden 10", price: 80, equipment: "PA, drum kit, keyboard", district: "Mitte", user: u3 )


puts "#{Room.count} rooms just created"

Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u1, room: r1)
Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u2, room: r2)
Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u3, room: r3)
Booking.create!(start_time: "2020-02-12 10:00", end_time: "2020-02-12 11:00", user: u3, room: r4)
