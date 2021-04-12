# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(brand: "Gibson", model: "Les Paul Standard", year: 2020, price: 2799.99, scale: 1, new_used: "new", description: "The Gibson Les Paul is a solid body electric guitar that was first sold by the Gibson Guitar Corporation in 1952.[1] The Les Paul was designed by Gibson president Ted McCarty, factory manager John Huis and their team with input from and endorsement by guitarist Les Paul. Its typical design features a solid mahogany body with a carved maple top and a single cutaway, a mahogany set-in neck with a rosewood fretboard, two pickups with independent volume and tone controls, and a stoptail bridge, although variants exist.", category: "electric", stock: 9, weight: 9.3, strings: 6)
Product.create!(brand: "Martin", model: "HD28", year: 2017, price: 3220.00, scale: 1, new_used: "used", description: "Classic herringbone, East Indian rosewood, ebony and Sitka spruce in the shape that started it all: the Dreadnought. Paired with our most comfortable neck, vintage appointments, scalloped, forward-shifted bracing, and a lifetime warranty. Powerful bottom end, rich tone, and strums that will fill the room—music history made new. Also available in Sunburst and Ambertone finish.", category: "acoustic", stock: 1, weight: 9.3, strings: 6)
Product.create!(brand: "Taylor", model: "Baby Taylor (BT1)", year: 2020, price: 799.51, scale: 1, new_used: "new", description: "The Baby Taylor acoustic guitar is the ultimate travel companion, delivering volume and tone that surprise for its diminutive dimensions. At three-quarters the size of a full-size guitar, the Baby Taylor lives for the road. It also loves little hands, which makes it an irresistible choice for kids taking lessons. Available with either a solid spruce or solid mahogany top.", category: "acoustic", stock: 12, strings: 6)

# CartedProduct.create!(user_id: 1, product_id: 1, quantity: 2, status: "carted")
# CartedProduct.create!(user_id: 1, product_id: 2, quantity: 1, status: "carted")
# CartedProduct.create!(user_id: 1, product_id: 3, quantity: 5, status: "carted")
