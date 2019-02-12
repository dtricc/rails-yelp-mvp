require 'byebug'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.create(name: 'Pizzeria', category: 'french', address: 'Jafa', phone_number: '324325')
Restaurant.create(name: 'Trotteria', category: 'french', address:'Dizengoff', phone_number: '234234')
Restaurant.create(name: 'Sushi', category: 'french', address:'Rothschild', phone_number: '469583')
Restaurant.create(name: 'Burger', category: 'french', address:'Beach', phone_number: '48583')
Restaurant.create(name: 'Falafel', category: 'french', address:'Herzlya', phone_number: '48374')

puts "you have this many Restaurants: #{Restaurant.count}"

