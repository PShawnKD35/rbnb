# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all if Rails.env.development?

dev_user = User.create!(email: "tony@stark.com", password: "1234qwer", name: "Tony Stark", is_shifu: true)
# Booking example:
rentee = User.create!(email: "dev@rbnb.com", password: "1234qwer", name: "Alpha Go")
dev_service = Service.create!(name: "Stark Industry Show Room", user: dev_user, charge: 1, address: "Marvel Virtual place")
Item.create!(name: "Iron Suit", service: dev_service)
available_service = AvailableService.create!(service: dev_service, start_time: Time.now, end_time: Time.now + 30)
Booking.create!(user: rentee, available_service: available_service)

# user
userone = User.create!(email: "irene@yahoo.com", password: "123456", name: "Irene", is_shifu: true)
usertwo = User.create!(email: "shawn@yahoo.com", password: "123456", name: "Shawn", is_shifu: true)
userthree = User.create!(email: "olivia@yahoo.com", password: "123456", name: "Olivia", is_shifu: true)
userfour = User.create!(email: "paul@yahoo.com", password: "123456", name: "Paul", is_shifu: true)

#new user
userfive = User.create!(email: "steven@yahoo.com", password: "123456", name: "Steven", is_shifu: true)
usersix = User.create!(email: "jack@yahoo.com", password: "123456", name: "Jack", is_shifu: true)
userseven = User.create!(email: "sarah@yahoo.com", password: "123456", name: "Sarah", is_shifu: true)

usereight = User.create!(email: "frank@yahoo.com", password: "123456", name: "Frank", is_shifu: true)
usernine = User.create!(email: "mark@yahoo.com", password: "123456", name: "Mark", is_shifu: true)
userten = User.create!(email: "bell@yahoo.com", password: "123456", name: "Bell", is_shifu: true)

usereleven = User.create!(email: "lisa@yahoo.com", password: "123456", name: "Lisa", is_shifu: true)
usertwelve = User.create!(email: "tammy@yahoo.com", password: "123456", name: "Tammy", is_shifu: true)
userthirteen = User.create!(email: "logan@yahoo.com", password: "123456", name: "Logan", is_shifu: true)
userfourteen = User.create!(email: "ryan@yahoo.com", password: "123456", name: "Ryan", is_shifu: true)
userfifteen = User.create!(email: "jess@yahoo.com", password: "123456", name: "Jess", is_shifu: true)
usersixteen = User.create!(email: "patty@yahoo.com", password: "123456", name: "Patty", is_shifu: true)
userseventeen = User.create!(email: "marco@yahoo.com", password: "123456", name: "Marco", is_shifu: true)
usereighteen = User.create!(email: "martin@yahoo.com", password: "123456", name: "Martin", is_shifu: true)
usernineteen = User.create!(email: "sergio@yahoo.com", password: "123456", name: "Sergio", is_shifu: true)
usertwenty = User.create!(email: "martina@yahoo.com", password: "123456", name: "Martina", is_shifu: true)


# user_dj service
userone_service = Service.create!(name: "DJ for 10 years", user: userone, charge: 10, address: "Kerry Centre, Shanghai, China", description: "I am a super experienced DJ. I have DJ-ed in Shanghai, London and Paris.", category: "Music")
usertwo_service = Service.create!(name: "DJ for noobs", user: usertwo, charge: 15, address: "iapm, Shanghai, China", description: "This is my passion, been doing this for 5 years now. Don't be scared, if you give it a go, you will love it!", category: "Music")
userthree_service = Service.create!(name: "Best DJ in town", user: userthree, charge: 20, address: "the Puli hotel, Shanghai, China", description: "This is my passion, been doing this for 5 years now. Don't be scared, if you give it a go, you will love it!", category: "Music")
userfour_service = Service.create!(name: "Noob learn DJ", user: userfour, charge: 25, address: "Jing'an Temple, Shanghai, China", description: "This is my passion, been doing this for 5 years now. Don't be scared, if you give it a go, you will love it!", category: "Music")



# user_outdoor  service
userfive_service = Service.create!(name: "White Water Kayaker", user: userfive, charge: 30, address: "Jin Mao Tower, Shanghai, China", description: "Semi-professional white water kayaker!  Willing to spread my love of the sport with others!", category: "Outdoor", remote_photo_url: "/images/kayak.jpg")
usersix_service = Service.create!(name: "Grill Master", user: usersix, charge: 15, address: "Jiao Tong University, Shanghai, China", description: "I love barbecuing and grilling culture.  I can teach you to grill like a pro!", category: "Outdoor", remote_photo_url: "/images/Grill.jpeg")
userseven_service = Service.create!(name: "Trying Deep Sea Fish", user: userseven, charge: 16, address: "Peoples Square, Shanghai, China", description: "I have been deep-sea fisihin for over 10 years.  Pleasure to show those interested my equipment!", category: "Outdoor", remote_photo_url: "/images/Sea-Fishing-Rods.jpg")
usereight_service = Service.create!(name: "New to Camping", user: usereight, charge: 32, address: "Le Royal Méridien, Shanghai, China", description: "I am an avid camper and would love sharing my eperience with everyone interested.", category: "Outdoor", remote_photo_url: "/images/rei-trail-dome-2-tent-complete-with-rainfly-footprint-euc.jpg")


# user_driving service
usernine_service = Service.create!(name: "Shanghahi BMW Club Member", user: usernine, charge: 25, address: "Shanghai Library, Shanghai, China", description: "I am treasury of the Shanghai BMW auto-club.  Enjoy teaching others about BMW's history.", category: "Driving", remote_photo_url: "/images/bmw.jpeg" )
userten_service = Service.create!(name: "Benz Enthusiast", user: userten, charge: 20, address: ", Donghua University, Shanghai, China", description: "I can teach you why Mercedes is the best car manufacturer out there.", category: "Driving", remote_photo_url: "/images/mercedes.jpg" )
usereleven_service = Service.create!(name: "Giving Driving Lessons in the best car to drive.", user: usereleven, charge: 10, address: "Hongqiao Railway Station", description: "If you want to learn driving stickshift the right way, contact me.", category: "Driving", remote_photo_url: "/images/porsche.jpg")
usertwelve_service = Service.create!(name: "Going Fast Nos Tank", user: usertwelve, charge: 10, address: "Shanghai Indoor Stadium, Shanghai, China", description: "I can show you everything you need to know about adding Nos to your engine.", category: "Driving", remote_photo_url: "/images/nos.jpeg")



#user_music service
userthirteen_service = Service.create!(name: "Who loves the electric guitar?", user: userthirteen, charge: 10, address: "The Bund, Shanghai, China", description: "I am the nephey of Jimi Hendrix and can show you my guitar collection.", category: "Music", remote_photo_url: "/images/fender.jpeg")
userfourteen_service = Service.create!(name: "Anyone interested in tenor sax?", user: userfourteen, charge: 10, address: "JFrench Concession, Shanghai, China", description: "Have been playing in jazz bands around the world for over 20 years.", category: " Music", remote_photo_url: "/images/Saxophone-compressor.png")
userfifteen_service = Service.create!(name: "Thinking about learning the piano", user: userfifteen, charge: 10, address: "Fudan University, Shanghai, China", description: "I am a concert pianist in the Shanghai symphony.  I want to spread my passion for this grand instrument.", category: "Music", remote_photo_url: "/images/piano.jpeg" )
usersixteen_service = Service.create!(name: "Interested in violins", user: usersixteen, charge: 10, address: "Tongji University, Shanghai, China", description: "I am a part of the Shanghai symphony orchestra.", category: "Music", remote_photo_url: "/images/violin.jpeg")
usernineteen_service = Service.create!(name: "Classical pianist form London", user: usernineteen, charge: 40, address: "Jiading, Shanghai, China", description: "Sharing new VR experience!", category: "Music", remote_photo_url: "/images/yamaha.jpeg")
usertwenty_service = Service.create!(name: "Music producer", user: usertwenty, charge: 35, address: "Jiading, Shanghai, China", description: "Sharing new VR experience!", category: "Music", remote_photo_url: "/images/kawai.jpg")


# uers_tech service
userseventeen_service = Service.create!(name: "Tech Savy Guy", user: userseventeen, charge: 10, address: "Huashan Hospital, Shanghai, China", description: "Who loves VR?", category: "Tech", remote_photo_url: "/images/Oculus.jpeg")
usereighteen_service = Service.create!(name: "Virtual Fun", user: usereighteen, charge: 20, address: "Jiading, Shanghai, China", description: "Sharing new VR experience!", category: "Tech", remote_photo_url: "/images/Oculus.jpeg")


# DJ Items
Item.create!(name: "Cool DJ set", description: "Numark M2BLACK Professional Two-Channel Scratch Mixer with 3-band EQ per Channel", service: userone_service)
Item.create!(name: "Awesome DJ set", description: "Rockville RDJ3BT2 Channel DJ Mixer with USB, Bluetooth, Talkover, 4 Line Inputs", service: usertwo_service)
Item.create!(name: "Brand new DJ set", description: "Hercules DJControl Compact All-in-one Controller Solution with Virtual DJ LE Software Download", service: userthree_service)
Item.create!(name: "Classic DJ set", description: "Numark M2BLACK Professional Two-Channel Scratch Mixer with 3-band EQ per Channel", service: userfour_service)


# Outdoor Items
Item.create!(name: "Orange Kayak", description: "Two seater orange kayak fantastic for white water kayaking.", service: userfive_service)
Item.create!(name: "Barbecue Grill", description: "George Foreman Model: TT-300 Macho Grill.", service: usersix_service)
Item.create!(name: "Deep Sea Fishing Poles", description: "Titanium fishing pole great for a deep sea fisihin experience.", service: userseven_service)
Item.create!(name: "REI Tent", description: "REI Redwood Tent.", service: usereight_service)


# Driving_items
Item.create!(name: "BMW Orange 7 Series 2019", description: "For lovers of the ultimate driving machine", service: usernine_service)
Item.create!(name: "Mercedes GLC-300 2014", description: "A great driving epxerience for those with a family", service: userten_service)
Item.create!(name: "Porsche 911 2013", description: "More than happy to pass knowledge of cars to others", service: usereleven_service)
Item.create!(name: "Fast and Furious Nos", description: "A sports car enthusiast can show you about car engines", service: usertwelve_service)

# Music_items
Item.create!(name: "Fender Guitar", description: "Love sharing passion for guitar playing with others", service: userthirteen_service)
Item.create!(name: "Tenor Saxaphone", description: "George Suza classic tennor saxaphone", service: userfourteen_service)
Item.create!(name: "Piano", description: "Black Steinway grand piano", service: userfifteen_service)
Item.create!(name: "Violin", description: "Red Violin", service: usersixteen_service)

# Tech_items
Item.create!(name: "Ocolus Rift", description: "Oculus Rift with many games", service: userseventeen_service)
Item.create!(name: "Super Cool Oculus Rift", description: "Vitual experience with Oculus Rift", service: usereighteen_service)

# Music_items
Item.create!(name: "Brenner Piano", description: "World class piano", service: usernineteen_service)
Item.create!(name: "Yamaha", description: "Yahama XS-300", service: usertwenty_service)

# item on the same service
Item.create!(name: "Iron Suit", description: "Bought at Avengers premium", service: usertwo_service)
