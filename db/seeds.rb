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
# dev_service = Service.create!(name: "Stark Industry Show Room", user: dev_user, charge: 1, address: "Marvel Virtual place")
# Item.create!(name: "Iron Suit", service: dev_service)
# available_service = AvailableService.create!(service: dev_service, start_time: Time.now, end_time: Time.now + 30)
# Booking.create!(user: rentee, available_service: available_service)

# user
userone = User.create!(email: "irene@yahoo.com", password: "123456", name: "Irene", is_shifu: true)
usertwo = User.create!(email: "shawn@yahoo.com", password: "123456", name: "Shawn", is_shifu: true)
userthree = User.create!(email: "olivia@yahoo.com", password: "123456", name: "Olivia", is_shifu: true)
userfour = User.create!(email: "paul@yahoo.com", password: "123456", name: "Paul", is_shifu: true)
# service
userone_service = Service.create!(name: "DJ for 10 years", user: userone, charge: 10, address: "Kerry Centre, Shanghai, China", description: "I am a super experienced DJ. I have DJ-ed in Shanghai, London and Paris.")
usertwo_service = Service.create!(name: "DJ for noobs", user: usertwo, charge: 10, address: "Kerry Centre, Shanghai, China", description: "This is my passion, been doing this for 5 years now. Don't be scared, if you give it a go, you will love it!")
userthree_service = Service.create!(name: "Best DJ in town", user: userthree, charge: 10, address: "Kerry Centre, Shanghai, China", description: "This is my passion, been doing this for 5 years now. Don't be scared, if you give it a go, you will love it!")
userfour_service = Service.create!(name: "Noob learn DJ", user: userfour, charge: 10, address: "Kerry Centre, Shanghai, China", description: "This is my passion, been doing this for 5 years now. Don't be scared, if you give it a go, you will love it!")
# items
Item.create!(name: "Cool DJ set", description: "Numark M2BLACK Professional Two-Channel Scratch Mixer with 3-band EQ per Channel", service: userone_service)
Item.create!(name: "Awesome DJ set", description: "Rockville RDJ3BT2 Channel DJ Mixer with USB, Bluetooth, Talkover, 4 Line Inputs", service: usertwo_service)
Item.create!(name: "Brand new DJ set", description: "Hercules DJControl Compact All-in-one Controller Solution with Virtual DJ LE Software Download", service: userthree_service)
Item.create!(name: "Classic DJ set", description: "Numark M2BLACK Professional Two-Channel Scratch Mixer with 3-band EQ per Channel", service: userfour_service)
