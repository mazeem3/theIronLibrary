class Api::BooksController < ApplicationController
    before_action do
        request.format = :json
    end

    protect_from_forgery with: :null_session

    def index
        q = Book.all
        q = q.where('title ILIKE ?', "%#{params[:query]}%") if params[:query].present?
        @books = q
    end

    def show
        @book = Book.find_by id: params[:id]
    end

    def check_out
        user = @current_user
        @book = Book.find_by id: params[:id]
        if @book.quantity != 0
            @book.quantity -= 1
            @checkout = Checkout.new
            @checkout.book_id = @book.id
            @checkout.user_id = user.id
            render "books/show.html.erb", status: 201 if @book.save && @checkout.save
        else
            render json: { errors: "Sorry, #{@book.title} is currently checked out, check back later" }, status: 422
        end
    end

    def check_in
      user = @current_user
        @book = Book.find_by id: params[:id]
        @checkout = Checkout.find_by user_id: user.id, book_id: @book.id
        if @checkout.present?
            @checkout.destroy
            @book.quantity += 1
            render "books/show.html.erb", status: 201 if @book.save
        else
            render json: { errors: "#{user.username}, you have not checked this book out yet"  }, status: 422
        end
    end
end
