class Api::V1::SourcesController < ApplicationController

    def index
        sources = Source.all
        render json: SourceSerializer.new(sources)
    end

    def show
        books = Source.books
        if params[:id] == "books"
            render json: SourceSerializer.new(books)
        end
    end

    private

    def source_params
        params.require(:source).permit(:id)
    end


end





