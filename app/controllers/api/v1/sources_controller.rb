class Api::V1::SourcesController < ApplicationController

    def index
        sources = Source.all
        render json: SourceSerializer.new(sources)
    end

    def show
        sources = Source.type(params[:id])
        render json: SourceSerializer.new(sources)
    end

    private

    def source_params
        params.require(:source).permit(:id)
    end


end