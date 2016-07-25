Rails.application.routes.draw do

root 'books#index'
get 'books/new' => 'books#new', as: :new_book
get 'books/:id' => 'books#show', as: :book
get 'books/:id/edit' => 'books#edit', as: :edit_book
patch 'books/:id' => 'books#update'
post 'books' => 'books#create'
delete 'books/:id' => 'books#delete'
get 'authors/new' => 'authors#new', as: :new_author
get 'authors/:id' => 'authors#show', as: :author
get 'authors/:id/edit' => 'books#edit', as: :edit_author
post 'authors' => 'authors#create'
delete 'authors/:id' => 'authors#delete'

get 'sign_in' => 'sessions#new', as: :sign_in
post 'sign_in' => 'sessions#create'
delete 'sign_in' => 'sessions#delete'

get 'registration' => 'users#new', as: :new_user
post 'registration' => 'users#create', as: :create_user

post 'books/checkout/:id' => 'books#checkout', as: :checkout_book
delete 'books/checkout/:id' => 'books#checkin', as: :checkin_book

get 'api/books' => 'api/books#index', as: :api_books
get 'api/books/:id' => 'api/books#show', as: :api_book
post 'api/books/checkout/:id' => 'api/books#checkout'
delete 'api/books/checkout/:id' => 'api/books#checkin'




end
