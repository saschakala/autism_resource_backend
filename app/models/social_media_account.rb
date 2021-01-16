class SocialMediaAccount < ApplicationRecord
    has_many :social_media_account_tags
    has_many :tags, through: :social_media_account_tags
    has_many :sma_creators
    has_many :creators, through: :sma_creators
end
