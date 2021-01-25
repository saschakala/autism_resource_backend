class Api::V1::FeedbacksController < ApplicationController

    def index
        feedbacks = Feedback.all
        render json: FeedbackSerializer.new(feedbacks)
    end

    def create
        feedback = Feedback.new(feedback_params)
        if feedback.save
            render json: FeedbackSerializer.new(feedback), status: :accepted 
        else
            render json: {errors: feedback.errors.full_messages}
        end
    end

    private

    def feedback_params
        params.require(:feedback).permit(:title, :feedback, :name)
    end

end
