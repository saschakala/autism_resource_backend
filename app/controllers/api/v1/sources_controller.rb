class Api::V1::SourcesController < ApplicationController

    def index
        sources = Source.all
        render json: SourceSerializer.new(sources)
    end

    def show
        books = Source.all.select {|source| source.source_type == "Book"} #move this to a method in model
        if params[:id] == "books"
            render json: SourceSerializer.new(books)
        end
    end

    private

    def source_params
        params.require(:source).permit(:id)
    end


end





