class SocialMediaAccount < ApplicationRecord
    has_many :tags, through: :social_media_account_tags
end
