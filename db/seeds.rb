require 'faker'

Author.delete_all
Book.delete_all
User.delete_all

maaz = User.create! username: "maaz", password: "12345678"
author  = Author.create! first_name: "Maaz", last_name: "Azeem", bio: "A horrible author"
Book.create! title: "Test", photo_url:"http://pngimg.com/upload/book_PNG2116.png", price: 8.99, author_id: author.id

10.times do
  User.create username: "#{Faker::Internet.user_name}", password: "12345678"
  i = Author.create! first_name: "#{Faker::Name.first_name}" , last_name: "#{Faker::Name.first_name}", bio: "#{Faker::Lorem.paragraph}"
  Book.create! title: "#{Faker::Book.title}", photo_url:"http://pngimg.com/upload/book_PNG2116.png", price:"#{Faker::Commerce.price}", author_id: i.id
end
hi
