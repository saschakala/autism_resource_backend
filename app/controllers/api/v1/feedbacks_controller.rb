class Api::V1::FeedbacksController < ApplicationController

    def index
        feedbacks = Feedback.all
        render json: FeedbackSerializer.new(feedbacks)
    end

end
