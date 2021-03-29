class BooksController < ApplicationController

    def new
        @book = Book.new
    end

    def show
        @book = Book.find(params[:id])
    end

    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to book_path(@book)
    end

    def index
        if params[:title]
            @book = Book.where('book LIKE ?', "%#{params[:title]}%")
        else
            @book = Book.all
        end
    end

    def edit
        @book = Book.find_by_id(params[:id])
    end

    def update
        @book = Book.find_by_id(params[:id])
        @book.update(book_params)
        redirect_to book_path(@book)
    end

    def destroy

        @book.destroy
        redirect_to book_path(@book)
    end

 private

    def book_params
        params.require(:book).permit(:title, :author, :publisher, :description, :pages)
    end   

end
