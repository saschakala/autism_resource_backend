class Api::V1::TagsController < ApplicationController


    def index
        tags = Tag.all
        render json: TagSerializer.new(tags)
    end

    def show
        books = Tag.books
        case 
        when params[:id] == "books"
            render json: TagSerializer.new(books)
        end
    end

    private

    def source_params
        params.require(:tag).permit(:id)
    end


end
