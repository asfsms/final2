# Deletes everything from the database
puts "Deleting all records from the database..."
User.delete_all
Stylist.delete_all
Style.delete_all
Stylist_expertise.delete_all
Box.delete_all
Box_type.delete_all

# Create the styles
puts "Creating styles..."
young_pro = Style.create(style_type: "young professional", style_description: "25-35 professional who wants to look cool yet professional")
plus_size_senior = Style.create(style_type: "Plus size senior", style_description: "55-75 woman who looks for chic yet flattering clothes")
senior_pro = Style.create(style_type: "Senior professional", style_description: "55-75 attractive with a modern look")
career_mother = Style.create(style_type: "Career Mother", style_description: "35-55 woman who runs a hectic lifestyle, wants to look good in comfortable clothing")

# Create the stylists
puts "Creating stylists..."
rutizisser = Stylist.create(first_name: "Ruti", last_name: "Zisser", image: "rutizisser.jpg", email: "ruti@gmail.com", password_digest: "12345")
hannagutman = Stylist.create(first_name: "Hanna", last_name: "Gutman", image: "hannagutman.jpg", email: "hanna@gmail.com", password_digest: "12345")
asafsegev = Stylist.create(first_name: "Asaf", last_name: "Segev", image: "asafsegev.jpg", email: "asaf@gmail.com", password_digest: "12345")
sharonsegev = Stylist.create(first_name: "Sharon", last_name: "Segev", image: "sharonsegev.jpg", email: "sharon@gmail.com", password_digest: "12345")
shailabelletrop = Stylist.create(first_name: "Shai", last_name: "Labelle Trop", image: "shailabelletrop.jpg", email: "shai@gmail.com", password_digest: "12345")

# Create the users
puts "Creating users..."
annaperelman = User.create(first_name: "Anna", last_name: "Perelman", dob: "1986", date_joined: "2014", how_heard: "Facebook", phone_number: "(224) 124-4567", address: "123 Chicago Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "anna@gmail.com", password_digest: "12345", height: "5'5", weight: "120", clothes_size: "6", shoe_size: "7.5", work_style: "Business Professional", evening_style: "Jeans & T-shirt", favorite_look: "1", style_id: young_pro.id, user_comments: "She is very laid back and loves color", stylist_id: hannagutman.id, date_started: "2015")
natalieshpiegel = User.create(first_name: "Natalie", last_name: "Shpiegel", dob: "1986", date_joined: "2012", how_heard: "Facebook", phone_number: "(345) 124-4567", address: "133 Hinman Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "natalie@gmail.com", password_digest: "12345", height: "5'2", weight: "110", clothes_size: "4", shoe_size: "6.5", work_style: "Business Casual", evening_style: "Jeans & T-shirt", favorite_look: "1", style_id: young_pro.id, user_comments: "She is very laid back and loves color", stylist_id: hannagutman.id, date_started: "2015")
saritsegev = User.create(first_name: "Sarit", last_name: "Segev", dob: "1977", date_joined: "2011", how_heard: "Article", phone_number: "(534) 124-4567", address: "1233 Sherman Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "sarit@gmail.com", password_digest: "12345", height: "5'0", weight: "130", clothes_size: "8", shoe_size: "6", work_style: "Casual", evening_style: "Jeans & T-shirt", favorite_look: "2", style_id: career_mother.id, user_comments: "She is very laid back and loves color", stylist_id: rutizisser.id, date_started: "2015")
annettesegev = User.create(first_name: "Annette", last_name: "Segev",dob: "2951", date_joined: "2014", how_heard: "Friend", phone_number: "(644) 124-4567", address: "123 Davis Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "annette@gmail.com", password_digest: "12345", height: "4'7", weight: "200", clothes_size: "14", shoe_size: "6", work_style: "Casual", evening_style: "Jeans & T-shirt", favorite_look: "3", style_id: plus_size_senior.id, user_comments: "She is very laid back and loves color", stylist_id: rutizisser.id, date_started: "2015")
tovazisser = User.create(first_name: "Tova", last_name: "Zisser", dob: "1956", date_joined: "2010", how_heard: "Friend", phone_number: "(568) 124-4567", address: "123 Orrington Ave.", city: "Evanston", state: "IL", country: "United States", zip: "60201", email: "tova@gmail.com", password_digest: "12345", height: "5'1", weight: "150", clothes_size: "10", shoe_size: "7", work_style: "Business Casual", evening_style: "chic", favorite_look: "4", style_id: senior_pro.id, user_comments: "She is very laid back and loves color", stylist_id: rutizisser.id, date_started: "2015")

# Create the Stylist_expertise
puts "Creating stylists' expertise..."
se1 = Stylist_expertise.create(stylist_id: rutizisser.id, style_id: plus_size_senior.id)
se2 = Stylist_expertise.create(stylist_id: rutizisser.id, style_id: senior_pro.id)
se3 = Stylist_expertise.create(stylist_id: rutizisser.id, style_id: career_mother.id)
se4 = Stylist_expertise.create(stylist_id: hannagutman.id, style_id: young_pro.id)
se5 = Stylist_expertise.create(stylist_id: hannagutman.id, style_id: career_mother.id)
se6 = Stylist_expertise.create(stylist_id: asafsegev.id, style_id: young_pro.id)
se7 = Stylist_expertise.create(stylist_id: sharonsegev.id, style_id: career_mother.id)
se8 = Stylist_expertise.create(stylist_id: shailabelletrop.id, style_id: young_pro.id)

# Create the boxe types
puts "Creating box types..."
summer_vacation = Box_type.create(name: "Summer Vacation", description: "summer vacation surprise box")
new_business = Box_type.create(name: "New Business Wardrobe", description: "the perfect business wardrobe")
wedding = Box_type.create(name: "BFF's Wedding Outfit", description: "optional outfits for an important event")
new_casual = Box_type.create(name: "Upgrade my day-to-day wardrobe", description: "collection of casual clothes for day to day")

# Create the boxes
puts "Creating boxes..."
box1 = Box.create(user_id: annaperelman.id, stylist_id: hannagutman.id, boxtype_id: new_casual.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "234253", comments: "its our first box together, hope I got her style right")
box2 = Box.create(user_id: natalieshpiegel.id, stylist_id: hannagutman.id, boxtype_id: summer_vacation.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "4564", comments: "its our first box together, hope I got her style right")
box3 = Box.create(user_id: annettesegev.id, stylist_id: rutizisser.id, boxtype_id: wedding.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "45637", comments: "its our first box together, hope I got her style right")
box4 = Box.create(user_id: tovazisser.id, stylist_id: rutizisser.id, boxtype_id: new_business.id, date: "2015", link: "assafd.asfd.com", order: "1234", invoice: "234253", comments: "its our first box together, hope I got her style right")
