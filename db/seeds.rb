# Deletes everything from the database
puts "Deleting all records from the database..."
User.delete_all
Stylist.delete_all
#Style.delete_all
#Stylist_expertise.delete_all
Box.delete_all
Theme.delete_all

# Create the styles
#puts "Creating styles..."
#young_pro = Style.create(style_type: "young professional", style_description: "25-35 professional who wants to look cool yet professional")
#plus_size_senior = Style.create(style_type: "Plus size senior", style_description: "55-75 woman who looks for chic yet flattering clothes")
#senior_pro = Style.create(style_type: "Senior professional", style_description: "55-75 attractive with a modern look")
#career_mother = Style.create(style_type: "Career Mother", style_description: "35-55 woman who runs a hectic lifestyle, wants to look good in comfortable clothing")

# Create the stylists
puts "Creating stylists..."
rutizisser = Stylist.create(first_name: "Ruti", last_name: "Zisser", image: "rutizisser.jpg", email: "ruti@gmail.com")
hannagutman = Stylist.create(first_name: "Hanna", last_name: "Gutman", image: "hannagutman.jpg", email: "hanna@gmail.com")
asafsegev = Stylist.create(first_name: "Asaf", last_name: "Segev", image: "asafsegev.jpg", email: "asaf@gmail.com")
sharonsegev = Stylist.create(first_name: "Sharon", last_name: "Segev", image: "sharonsegev.jpg", email: "sharon@gmail.com")
shailabelletrop = Stylist.create(first_name: "Shai", last_name: "Labelle Trop", image: "shailabelletrop.jpg", email: "shai@gmail.com")

# Create the users
puts "Creating users..."
annaperelman = User.create(first_name: "Anna", last_name: "Perelman", dob: "1986", date_joined: "2014", how_heard: "Facebook", phone_number: "(224) 124-4567", address: "123 Chicago Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "anna@gmail.com", password: "12345", height: "5'5", weight: "120", top_size: "S", bottom_size: "6", shoe_size: "7.5", work_style: "Business Professional", evening_style: "Jeans & T-shirt", casual_style: "Jeans & T-shirt", special_style: "Jeans & T-shirt", user_comments: "She is very laid back and loves color", stylist_id: hannagutman.id, date_started: "2015", admin: "1")
natalieshpiegel = User.create(first_name: "Natalie", last_name: "Shpiegel", dob: "1986", date_joined: "2012", how_heard: "Facebook", phone_number: "(345) 124-4567", address: "133 Hinman Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "natalie@gmail.com", password: "12345", height: "5'2", weight: "110", top_size: "S", bottom_size: "4", shoe_size: "6.5", work_style: "Business Casual", evening_style: "Jeans & T-shirt", casual_style: "Jeans & T-shirt", special_style: "Jeans & T-shirt", user_comments: "She is very laid back and loves color", stylist_id: hannagutman.id, date_started: "2015", admin: "1")
saritsegev = User.create(first_name: "Sarit", last_name: "Segev", dob: "1977", date_joined: "2011", how_heard: "Article", phone_number: "(534) 124-4567", address: "1233 Sherman Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "sarit@gmail.com", password: "12345", height: "5'0", weight: "130", top_size: "S", bottom_size: "8", shoe_size: "6", work_style: "Casual", evening_style: "Jeans & T-shirt", casual_style: "Jeans & T-shirt", special_style: "Jeans & T-shirt", user_comments: "She is very laid back and loves color", stylist_id: rutizisser.id, date_started: "2015", admin: "1")
annettesegev = User.create(first_name: "Annette", last_name: "Segev",dob: "2951", date_joined: "2014", how_heard: "Friend", phone_number: "(644) 124-4567", address: "123 Davis Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "annette@gmail.com", password: "12345", height: "4'7", weight: "200", top_size: "L", bottom_size: "14", shoe_size: "6", work_style: "Casual", evening_style: "Jeans & T-shirt", casual_style: "Jeans & T-shirt", special_style: "Jeans & T-shirt", user_comments: "She is very laid back and loves color", stylist_id: rutizisser.id, date_started: "2015", admin: "1")
tovazisser = User.create(first_name: "Tova", last_name: "Zisser", dob: "1956", date_joined: "2010", how_heard: "Friend", phone_number: "(568) 124-4567", address: "123 Orrington Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "tova@gmail.com", password: "12345", height: "5'1", weight: "150", top_size: "M", bottom_size: "10", shoe_size: "7", work_style: "Business Casual", evening_style: "chic", casual_style: "Jeans & T-shirt", special_style: "Jeans & T-shirt", user_comments: "She is very laid back and loves color", stylist_id: rutizisser.id, date_started: "2015", admin: "1")

# Create the Stylist_expertise
#puts "Creating stylists' expertise..."
#se1 = Stylist_expertise.create(stylist_id: rutizisser.id, style_id: plus_size_senior.id)


# Create the boxe types
puts "Creating box themes..."
summer_vacation = Theme.create(name: "Summer Vacation", image: "summervacation.jpg", description: "You've already picked that gorgeous vacation spot, and we all know that vacations go perfectly with beautiful and flattering summer outfits. Right?")
new_business = Theme.create(name: "Working 9to?", image: "business.jpg", description: "You want to freshen up that business wardrobe with some new pieces. Let's get you some items that are professional, unique and comfy (dah!)")
wedding = Theme.create(name: "That Big Event", image: "bigevent.jpg", description: "So you are invited to this BIG wedding everyone doesn't stop ranting about, but you wouldn't mind them talking about how beautiful your dress was.")
custom = Theme.create(name: "Custom Made", image: "custom.jpg", description: "You know best what you need and we are here for you! Let's chat and tailor together the perfect package with your name on it. So what are we waiting for??")
# surprise = Theme.create(name: "Surprise Me", image: "surprise.jpg", description: "The world is full of surprises, here is another one - dedicated to you")


# Create the boxes
puts "Creating boxes..."
box1 = Box.create(user_id: annaperelman.id, stylist_id: hannagutman.id, theme_id: custom.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "234253", comments: "its our first box together, hope I got her style right")
box2 = Box.create(user_id: natalieshpiegel.id, stylist_id: hannagutman.id, theme_id: summer_vacation.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "4564", comments: "its our first box together, hope I got her style right")
box3 = Box.create(user_id: annettesegev.id, stylist_id: rutizisser.id, theme_id: wedding.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "45637", comments: "its our first box together, hope I got her style right")
box4 = Box.create(user_id: tovazisser.id, stylist_id: rutizisser.id, theme_id: new_business.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "234253", comments: "its our first box together, hope I got her style right")
