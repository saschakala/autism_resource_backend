class Api::V1::SourcesController < ApplicationController

    def index
        sources = Source.all
        options = {
            include: [:creators, :tags]
        }
        render json: SourceSerializer.new(sources, options)
    end

end





