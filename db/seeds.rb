# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(brand: "Gibson", model: "Les Paul Standard", year: 2020, scale: 1, new_used: "new", description: "The Gibson Les Paul is a solid body electric guitar that was first sold by the Gibson Guitar Corporation in 1952.[1] The Les Paul was designed by Gibson president Ted McCarty, factory manager John Huis and their team with input from and endorsement by guitarist Les Paul. Its typical design features a solid mahogany body with a carved maple top and a single cutaway, a mahogany set-in neck with a rosewood fretboard, two pickups with independent volume and tone controls, and a stoptail bridge, although variants exist.", category: "electric", stock: 9, weight: 9.3, strings: 6)

CartedProduct.create!(user_id: 1, product_id: 1, quantity: 2, status: "carted")
CartedProduct.create!(user_id: 1, product_id: 2, quantity: 1, status: "carted")
CartedProduct.create!(user_id: 1, product_id: 3, quantity: 5, status: "carted")
CartedProduct.create!(user_id: 1, product_id: 1, quantity: 3, status: "carted")
