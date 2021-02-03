class Api::V1::BooksController < ApplicationController

    def index
        books = Book.all
        render json: BookSerializer.new(books)
    end

    def show
        books_by_tag = Book.by_tag(params[:id])
        render json: BookSerializer.new(books_by_tag)
    end

    private

    def book_params
        params.require(:book).permit(:id)
    end


end
