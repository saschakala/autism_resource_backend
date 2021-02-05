class Api::V1::ArticlesController < ApplicationController

    def index
        render json: ArticleSerializer.new(Article.all)
    end

    def show
        if params[:id] == "all"
            render json: ArticleSerializer.new(Article.all)
        else
            articles_by_tag = Article.by_tag(params[:id])
            render json: ArticleSerializer.new(books_by_tag)
        end
    end

    private

    def article_params
        params.require(:article).permit(:id)
    end


end
