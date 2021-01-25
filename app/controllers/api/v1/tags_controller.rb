class Api::V1::TagsController < ApplicationController


    def index
        tags = Tag.all
        render json: TagSerializer.new(tags)
    end


end
