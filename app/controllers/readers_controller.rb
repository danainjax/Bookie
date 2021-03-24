class ReadersController < ApplicationController
    
def new
    @reader = Reader.new
end

def show
    @reader = Reader.find(params[:id])
end

def create
    @reader = Reader.new
    @reader.title = params[:title]
    @reader.author = params[:author]
    @reader.short_synopsis = params[:short_synopsis]
    @reader.summary = params[:summary]
    @reader.pages = params[:pages]
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
    @reader.update(params["reader"])
    redirect_to reader_path(@reader)
end

def destroy
end

end
