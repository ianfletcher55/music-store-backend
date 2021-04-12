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
Product.create!(brand: "Gibson", model: "SG Standard", year: 2021, price: 1499.00, scale: 1, new_used: "new", description: "The Gibson SG Standard boasts classic looks and a full set of features associated with the desirable late-'60s style SG models. With a rounded-profile mahogany neck; bound, 22-fret rosewood fingerboard; stable, long-tenon, 19th-fret neck joint and a solid mahogany body it delivers that iconic rock tone with singing sustain. The 490R and 490T Alnico II pickups provide the power to drive your amp to new heights, and a black, 5-ply, full-face pickguard put this versatile classic in a category all its own.", category: "electric", stock: 3, strings: 6)
Product.create!(brand: "Fender", model: "Player Stratocaster Maple Fingerboard Limited Edition", year: 2021, price: 774.99, scale: 1, new_used: "new", description: "Over the decades, players have been continually inspired by the sound of a Strat. From the clarity of the high end, through the gut punch of the mids and the solid lows, it's a sound that's helped define what an electric guitar should be—versatile enough for any style and broad enough for any player to find an individual voice. 

This Player Series Stratocaster puts all of the classic features of the Strat at your fingertips while adding a modern edge, including a modern neck profile, medium-jumbo frets and a freshly redesigned 2-point fulcrum vibrato bridge. 
  
With a variety of beautiful gloss finishes over a solid alder body, a 22-fret maple fingerboard with a contemporary 9.5' radius for easy bending, the Player Series Stratocaster is primed and ready to carry you along your musical voyage. Case sold separately.", category: "electric", stock: 1, strings: 6)
Product.create!(brand: "Collings", model: "D1", year: 2019, price: 4300.00, scale: 1, new_used: "new", description: "The square-shouldered 14-fret dreadnought is the most popular steel-string acoustic guitar body shape in the world. While Collings is certainly not the only company to build them, we bring a new tonal clarity to the depth and warmth usually associated with such a large, deep-bodied guitar. Although its bass response makes the dreadnought ideal for vocal accompaniment, Collings versions are also often employed by bluegrass flatpickers who must compete with inherently louder instruments such as banjos and fiddles. The wide range of woods and neck sizes offered allow dreadnought fans to find a Collings model ideally suited to their playing style and tonal preference.", category: "acoustic", stock: 1, strings: 6)

# Gibson Les Paul Standard
Image.create!(url: "https://media.musiciansfriend.com/is/image/MMGS7/L54578000001000-02-2000x2000.jpg", description: "Gibson Les Paul Standard full front", primary: TRUE)
Image.create!(url: "https://media.musiciansfriend.com/is/image/MMGS7/L54578000001000-01-2000x2000.jpg", description: "Gibson Les Paul Standard full back", primary: FALSE)
# Martin HD28
Image.create!(url: "https://media.musiciansfriend.com/is/image/MMGS7/L40111000001000-02-2000x2000.jpg", description: "Martin HD28 full front", primary: TRUE)
Image.create!(url: "https://media.musiciansfriend.com/is/image/MMGS7/L40111000001000-03-2000x2000.jpg", description: "Martin HD28 full back", primary: FALSE)
# Baby Taylor
Image.create!(url: "https://media.musiciansfriend.com/is/image/MMGS7/H79543000001000-02-2000x2000.jpg", description: "Baby Taylor full front", primary: TRUE)
# Gibson SG
Image.create!(url: "https://images.reverb.com/image/upload/s--LK8ydD7t--/f_auto,t_supersize/v1617246124/kjhjzmgu0uw8eejld8ip.jpg", description: "Gibson SG full front", primary: TRUE)
Image.create!(url: "https://images.reverb.com/image/upload/s--wvOWTbgJ--/f_auto,t_supersize/v1617246123/hfnylx2qine7delowhg1.jpg", description: "Gibson SG full back", primary: FALSE)
# Fender Player Strat
Image.create!(url: "https://images.reverb.com/image/upload/s--cMIxOigt--/f_auto,t_large/v1596491254/nzfijrtc64y1faatkiov.jpg", description: "Fender Player Strat full front", primary: TRUE)
Image.create!(url: "https://images.reverb.com/image/upload/s--nhHqdebz--/f_auto,t_large/v1596491253/tbnmnlxfbiah52jopeh6.jpg", description: "Fender Player Strat body front", primary: FALSE)
Image.create!(url: "https://images.reverb.com/image/upload/s--1w3PkdJh--/f_auto,t_large/v1596491254/dcxqhkjv8ib0cibljivv.jpg", description: "Fender Player Strat body front", primary: FALSE)
Image.create!(url: "https://images.reverb.com/image/upload/s--3H1m6Xcv--/f_auto,t_large/v1596491255/xhv1welneikcnno2ocg5.jpg", description: "Fender Player Strat headstock back", primary: FALSE)
# Collings D1
Image.create!(url: "https://images.reverb.com/image/upload/s--O0Cvuj0P--/f_auto,t_large/v1553631541/voczdsbqarm0vyvckycd.jpg", description: "Collings D1 body front", primary: FALSE)
Image.create!(url: "https://images.reverb.com/image/upload/s--9Pcyy9Pg--/f_auto,t_large/v1553631542/hrs3ccvzx3ahihxndqwn.jpg", description: "Collings D1 full front", primary: TRUE)
Image.create!(url: "https://images.reverb.com/image/upload/s--LA9Ooxnx--/f_auto,t_large/v1553631547/mixvqwios6mguzxys74u.jpg", description: "Collings D1 full back", primary: FALSE)

ProductImage.create!(image_id: 1, product_id: 1)
ProductImage.create!(image_id: 2, product_id: 1)
ProductImage.create!(image_id: 3, product_id: 2)
ProductImage.create!(image_id: 4, product_id: 2)
ProductImage.create!(image_id: 5, product_id: 3)
ProductImage.create!(image_id: 6, product_id: 4)
ProductImage.create!(image_id: 7, product_id: 4)
ProductImage.create!(image_id: 8, product_id: 5)
ProductImage.create!(image_id: 9, product_id: 5)
ProductImage.create!(image_id: 10, product_id: 5)
ProductImage.create!(image_id: 11, product_id: 5)
ProductImage.create!(image_id: 12, product_id: 6)
ProductImage.create!(image_id: 13, product_id: 6)
ProductImage.create!(image_id: 14, product_id: 6)

Category.create!(name: "guitar")
Category.create!(name: "bass")
Category.create!(name: "mandolin")
Category.create!(name: "banjo")
Category.create!(name: "ukulele")

ProductCategory.create!(product_id: 1, category_id: 1)
ProductCategory.create!(product_id: 2, category_id: 1)
ProductCategory.create!(product_id: 3, category_id: 1)
ProductCategory.create!(product_id: 4, category_id: 1)
ProductCategory.create!(product_id: 5, category_id: 1)
ProductCategory.create!(product_id: 6, category_id: 1)

# CartedProduct.create!(user_id: 1, product_id: 1, quantity: 2, status: "carted")
# CartedProduct.create!(user_id: 1, product_id: 2, quantity: 1, status: "carted")
# CartedProduct.create!(user_id: 1, product_id: 3, quantity: 5, status: "carted")
