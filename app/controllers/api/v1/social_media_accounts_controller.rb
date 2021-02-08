class Api::V1::SocialMediaAccountsController < ApplicationController

    def index
        render json: SocialMediaAccountSerializer.new(SocialMediaAccount.all)
    end

    def show
        if params[:id] == "all"
            render json: SocialMediaAccountSerializer.new(SocialMediaAccount.all)
        else
        sma_by_tag = SocialMediaAccount.by_tag(params[:id])
        render json: SocialMediaAccountSerializer.new(sma_by_tag)
        end
    end

    private

    def social_media_account_params
        params.require(:social_media_account).permit(:id)
    end

end
