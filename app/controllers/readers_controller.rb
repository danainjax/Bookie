class ReadersController < ApplicationController
    
def new
    @reader = Reader.new
end

def show
    @reader = Reader.find(params[:id])
end

def create
    @reader = Reader.new(reader_params(:username, :first_name, :last_name, :favorite_genre, :favorite_book))
    @reader.save
    redirect_to reader_path(@reader)
end

def index
    @readers = Reader.all 
end

def edit
    @reader = Reader.find(params[:id])
end

def update
    @reader = Reader.find(params[:id])
    @reader.update(reader_params(:first_name, :last_name, :favorite_genre, :favorite_book))
    redirect_to reader_path(@reader)
end

def destroy
end

private

    def reader_params(*args)
        params.require(:reader).permit(*args)
            # (:username, :first_name, :last_name, :favorite_genre, :favorite_book)
    end 

end
