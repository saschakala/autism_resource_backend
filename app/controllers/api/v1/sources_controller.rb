class Api::V1::SourcesController < ApplicationController

    def index
        sources = Source.all
        render json: SourceSerializer.new(sources)
    end

    def show
        sources = Source.type(params[:id])
        render json: SourceSerializer.new(sources)
        # books = Source.books
        # articles = Source.articles
        # case 
        # when params[:id] == "books"
        #     render json: SourceSerializer.new(books)
        # when params[:id] == "articles"
        #     render json: SourceSerializer.new(articles)
        # end
    end

    private

    def source_params
        params.require(:source).permit(:id)
    end


end