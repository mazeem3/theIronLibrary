class AuthorsController < ApplicationController
    def author
        @author = Author.new
        @author.first_name = params[:author][:first_name]
        @author.last_name = params[:author][:last_name]
        @author.bio = params[:author][:bio]
    end

    def show
        @author = Author.find_by id: params[:id]
    end

    def new
        @author = Author.new
    end

    def create
        author
        if @author.save
            redirect_to root_path, notice: 'Author Created!'
        else
            render :new
        end
    end

end
