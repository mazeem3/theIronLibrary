# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.delete_all
Book.delete_all
User.delete_all

maaz = User.create! username: "maaz", password: "12345678"
author  = Author.create! first_name: "Maaz", last_name: "Azeem", bio: "A horrible author"
Book.create! title: "Test", photo_url:"http://pngimg.com/upload/book_PNG2116.png", price: 8.99, author_id: author.id
