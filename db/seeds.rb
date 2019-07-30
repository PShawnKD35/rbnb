# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all if Rails.env.development?

dev_user = User.create!(email: "tony@stark.com", password: "1234qwer", name: "Tony Stark", is_shifu: true)
rentee = User.create!(email: "dev@rbnb.com", password: "1234qwer", name: "Alpha Go")
dev_service = Service.create!(name: "Stark Industry Show Room", user: dev_user, charge: 1, address: "Marvel Virtual place")
Item.create!(name: "Iron Suit", service: dev_service)
available_service = AvailableService.create!(service: dev_service, start_time: Time.now, end_time: Time.now + 30)
Booking.create!(user: rentee, available_service: available_service)