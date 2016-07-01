class BooksController < ApplicationController
    def book
        @book.author_id = params[:book][:author_id]
        @book.title = params[:book][:title]
        @book.photo_url = params[:book][:photo_url]
        @book.price = params[:book][:price]
    end

    def index
        @books = Book.all
        @authors = Author.all
     end

    def show
        @book = Book.find_by id: params[:id]
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new
        book
        if @book.save
            redirect_to root_path, notice: 'Book Created!'
        else
            render :new
        end
    end

    def edit
        @book = Book.find_by id: params[:id]
    end

    def update
        @book = Book.find_by id: params[:id]
        book
        if @book.save
            redirect_to root_path
        else
            render :edit
        end
    end

    def delete
        Book.find(params[:id]).destroy
        redirect_to root_path
    end
end
