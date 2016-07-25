json.books @books do |book|
    json.id book.id
    json.title book.title
    json.price number_to_currency(book.price)
    json.photo_url book.photo_url
    json.author do
        json.author_id book.author.id
        json.author_name book.author.fname
    end
end
