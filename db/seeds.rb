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


Room.create!(image_url: 'https://images.pexels.com/photos/164938/pexels-photo-164938.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', name: 'Professional Studio', description: "Fully equipped studio with amazing sound qualities. Suitable for professional music production.5sqm", address: "Rudi-Dutschke-Strasse 5", price: 75, equipment: "fully equipped", district: "Mitte", user: u1 )
Room.create!(image_url: 'https://images.pexels.com/photos/1327426/pexels-photo-1327426.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', name: 'Amazing Rehearsal Room', description: "Partly equipped rehearsal room for bands. 35sqm", address: "Linienstrasse 89", price: 50, equipment: "Drum Kit, Microphones, 2 x amplifiers ", district: "Mitte", user: u2 )
Room.create!(image_url: 'https://images.pexels.com/photos/1267297/pexels-photo-1267297.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',name: 'Outdoor Rehearsal Room', description: "Enjoy this hawaiian atmoshere in Mitte", address: "Friedrichstrasse 180", price: 30, equipment: "contrabass, drum kit, keyboard", district: "Mitte", user: u3 )

puts "#{Room.count} rooms just created"
