json.book do
    json.id @book.id
    json.title @book.title
    json.url api_book_url(id: @book.id)
    json.price number_to_currency(@book.price)
    json.photo_url @book.photo_url
    json.author do
        json.author_id @book.author.id
        json.author_name @book.author.fname
    end
end
