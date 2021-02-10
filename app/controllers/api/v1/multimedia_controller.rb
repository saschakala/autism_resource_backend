class Api::V1::MultimediaController < ApplicationController

    def index
        render json: MultimediumSerializer.new(Multimedium.all)
    end

    def show
        if params[:id] == "all"
            render json: MultimediumSerializer.new(Multimedium.all)
        else
        mm_by_tag = MultimediumSerializer.by_tag(params[:id])
        render json: MultimediumSerializer.new(mm_by_tag)
        end
    end

    private

    def multimedium_params
        params.require(:multimedium).permit(:id)
    end

end
