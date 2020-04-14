class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data
    
    def index
        render json: @data
        # debug line
        puts "@data array looks like"
        p @data
    end
    
    #Show a single book
    def show
        #repond back with the book in json
        book_to_return = {}
        for book in @data
            if book[:id] == params[:id]
                book_to_return = book 
            end
        end
        render json: book_to_return
        # debug line
        puts "@data array looks like"
        p @data
    end
    
    #Create a new book
    def create
        #respond back with the created book in json
        id = params[:id]
        title = params[:title]
        author = params[:author]
        new_book = {id: id, title: title, author: author}
        @data.push(new_book)
        render json: new_book
        # debug line
        puts "@data array looks like"
        p @data
    end

    # Helper method
    def get_book(id)
        # iterates through each element that are hashes in the @data array
        @data.each do |book|
            # if id's match, return that element from @data array
            if book[:id] == id
                return book 
            end
        end
        # return empty hash otherwise
        return {}
    end
    
    #Update a book
    def update
        # respond back with the udpated book in json
        book = get_book(params[:id])
        book[:title] = params[:title]
        book[:author] = params[:author]
        render json: book
        # debug line
        puts "@data array looks like"
        p @data
    end
    
    #Remove a book
    def destroy
        # respond back with the deleted book in json
        book = get_book(params[:id])
        @data.delete(book)
        render json: book
        #debug lines 
        puts "@data array looks like"
        p @data
    end
    
    private
    def setup_data
        @data = [
            { id: "1", title: "Harry Potter", author: "J.K Rowling" },
            { id: "2", title: "Name of the wind", author: "Patrick Rothfuss" }
        ]
    end
end