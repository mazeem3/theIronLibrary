# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create first_name: "Maaz", last_name: "Azeem", bio: "A horrible author"
Book.create title: "Test Book", photo_url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTMb5E-uTtkzmLTiftzbXR2YpciYPwntxoe0IDxRrpO2yYlURu9Xbn19LA", price: 1.99
