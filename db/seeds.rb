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

r1 = Room.create!(image_url: 'https://images.unsplash.com/photo-1507245921392-e902673ca772?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',name: 'Perfect Rehearsal', description: "Everything that you need", address: "Schulstrasse 100, Berlin", price: 55, equipment: "Amplifier, Speaker, Guitar, Keyboard", district: "Wedding", user: u1 )
r2 = Room.create!(image_url: 'https://noisy-musicworld.com/rooms/files/10s-1024x683.jpg',name: 'Soundproof Room', description: "Rock through the night in this soundproof rehearsal room", address: "Unter den Linden 10, Berlin", price: 80, equipment: "PA, drum kit, keyboard", district: "Mitte", user: u1 )
r3 = Room.create!(image_url: 'https://images.pexels.com/photos/1267297/pexels-photo-1267297.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',name: 'Outdoor Rehearsal Room', description: "Enjoy this hawaiian atmoshere in Mitte", address: "Friedrichstrasse 180, Berlin", price: 30, equipment: "contrabass, drum kit, keyboard", district: "Wedding", user: u1 )

r4 = Room.create!(image_url: 'https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',name: 'My Little Room', description: "Rehearse with your friends", address: "Schlossstrasse 59, Berlin", price: 50, equipment: "3 x Guitars, Microphone", district: "Charlottenburg", user: u1 )
r5 = Room.create!(image_url: 'https://images.unsplash.com/photo-1561749818-79a8e0185966?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',name: 'Piano Room', description: "Peacefull room to play piano", address: "Leopoldplatz 59, Berlin", price: 20, equipment: "Piano, chair", district: "Wedding", user: u1 )
r6 = Room.create!(image_url: 'https://images.unsplash.com/photo-1537054388073-cf990597af2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1778&q=80',name: 'Drum Kit Room', description: "Don't worry about neighbours", address: "Budesstrasse 61, Berlin", price: 50, equipment: "Drum kit", district: "Charlottenburg", user: u1 )
r7 = Room.create!(image_url: 'https://images.pexels.com/photos/164938/pexels-photo-164938.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', name: 'Professional Studio', description: "Amazing sound qualities. Suitable for professionals.", address: "Rudi-Dutschke-Strasse 26, Berlin", price: 75, equipment: "fully equipped", district: "Mitte", user: u1 )
r8 = Room.create!(image_url: 'https://images.pexels.com/photos/1327426/pexels-photo-1327426.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', name: 'Amazing Rehearsal Room', description: "Partly equipped rehearsal room for bands.", address: "Kremmener Str. 9, Berlin", price: 50, equipment: "Drum Kit, Microphones, 2 x amplifiers ", district: "Prenzlauer Berg", user: u1 )


puts "#{Room.count} rooms just created"

Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u1, room: r1)
Booking.create!(start_time: "2020-02-12 13:00", end_time: "2020-02-12 15:00", user: u2, room: r2)
Booking.create!(start_time: "2020-02-12 07:00", end_time: "2020-02-12 08:00", user: u3, room: r3)
Booking.create!(start_time: "2020-02-12 10:00", end_time: "2020-02-12 11:00", user: u3, room: r4)
