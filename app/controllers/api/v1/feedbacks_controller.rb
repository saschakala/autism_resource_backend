class Api::V1::FeedbacksController < ApplicationController

    def index
        feedbacks = Feedback.all
        render json: SourceSerializer.new(feedbacks)
    end

end
