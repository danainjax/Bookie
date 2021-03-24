class BooksController < ApplicationController

    def new
        @book = Book.new
    end

    def show
        @book = Book.find(params[:id])
    end

    def create
        @book = Book.new
        @book.title = params[:title]
        @book.author = params[:author]
        @book.short_synopsis = params[:short_synopsis]
        @book.summary = params[:summary]
        @book.pages = params[:pages]
        @book.save
        redirect_to book_path(@book)
    end

    def index
        @books = Book.all 
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        @book.update(params["book"])
        redirect_to book_path(@book)
    end

    def destroy
    end

#  private

#     def book_params
#         params.require(:book).permit(:title, :author, :short_synopsis, :summary, :pages)
#     end   

end
