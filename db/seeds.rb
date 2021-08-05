# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "z", email: "zacharyflynn06@gmail.com", first_name: "Zac", last_name: "Flynn", role: "admin", password: "snocat")
Cart.create(user_id: User.first.id)
Product.create(name: "T-shirt", price: 10.99, description: "It is a shirt")
Article.create(title: "band does ok", author: "Rolling Stone")
Order.create(user_id: User.first.id, shipping_info: "UPS")

Order.first.products << Product.first

Cart.first.products << Product.first

User.first.orders << Order.first