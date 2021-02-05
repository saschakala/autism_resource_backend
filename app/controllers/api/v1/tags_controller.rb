class Api::V1::TagsController < ApplicationController


    def index
        tags = Tag.all
        render json: TagSerializer.new(tags)
    end

    def show
        case 
        when params[:id] == "books"
            render json: TagSerializer.new(Tag.books)
        when params[:id] == "articles"
            render json: TagSerializer.new(Tag.articles)
        end
    end

    private

    def source_params
        params.require(:tag).permit(:id)
    end


end
