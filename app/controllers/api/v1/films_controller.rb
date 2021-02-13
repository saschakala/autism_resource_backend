class Api::V1::FilmsController < ApplicationController

    def index
        render json: FilmSerializer.new(Film.all)
    end

    def show
        if params[:id] == "all"
            render json: FilmSerializer.new(Film.all)
        else
        films_by_tag = Film.by_tag(params[:id])
        render json: FilmSerializer.new(films_by_tag)
        end
    end

    private

    def film_params
        params.require(:film).permit(:id)
    end


end
