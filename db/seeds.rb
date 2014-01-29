# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products << Product.create(name: "HALO: Combat Evolved", price: 29.99)
products << Product.create(name: "iPod", price: 199.99)
products << Product.create(name: "Toshiba Windows 8 Laptop", price: 499.99)
products << Product.create(name: "Watch", price: 49.99)
products << Product.create(name: "Necklace", price: 999.99)
products << Product.create(name: "Earings", price: 1.00)
products << Product.create(name: "Cutlery Set", price: 60.00)
products << Product.create(name: "Plates", price: 20.99)
products << Product.create(name: "Blender", price: 100.00)

categories << Category.create(name: "Video Games")
categories << Category.create(name: "Electronics")
categories << Category.create(name: "Jewelry")
categories << Category.create(name: "Kitchen Utencils")
categories << Category.create(name: "Kitchen Appliances")

associations << Association.create(product_id: 1, category_id: 1)
associations << Association.create(product_id: 1, category_id: 2)
associations << Association.create(product_id: 2, category_id: 2)
associations << Association.create(product_id: 3, category_id: 2)
associations << Association.create(product_id: 4, category_id: 3)
associations << Association.create(product_id: 5, category_id: 3)
associations << Association.create(product_id: 6, category_id: 3)
associations << Association.create(product_id: 7, category_id: 4)
associations << Association.create(product_id: 8, category_id: 4)
associations << Association.create(product_id: 9, category_id: 4)
associations << Association.create(product_id: 9, category_id: 5)