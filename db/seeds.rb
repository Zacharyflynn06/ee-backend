# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "zacharyflynn06@gmail.com", first_name: "Zac", last_name: "Flynn", role: "admin", password: "password")
Cart.create(user_id: User.first.id)
Product.create(name: "Ladies T Shirt - White", price: 19.99, description: "Bella Canvas Ladies T - Shirt")
Product.create(name: "Ladies T Shirt - Gray", price: 19.99, description: "Bella Canvas Ladies T - Shirt")
Product.create(name: "Eminence Wellness CBD", price: 39.99, description: "1000mg CBD Tincture")
Article.create(title: "band does ok", author: "Rolling Stone")

Event.create(name: "Summer Concert Series", ticket_link: "https://m.facebook.com/events/159583399578752", description: "Town party at the base of the mountain!", lineup: "Eminence Ensemble", date: "Aug-15-2021", venue_name: "Steamboat Mountain", city: "Steamboat", state: "Colorado")
Event.create(name: "Avon Outside", ticket_link: "", description: "Summer Concer Series", lineup: "Eminence Ensemble", date: "Sep-1-2021", venue_name: "Avon Ampitheater", city: "Avon", state: "Colorado")

# Order.create(user_id: User.first.id)

# Order.first.products << Product.first

# Cart.first.products << Product.first

# User.first.orders << Order.first