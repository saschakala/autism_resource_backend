class SocialMediaAccount < ApplicationRecord
    has_many :sma_tags
    has_many :tags, through: :sma_tags

    has_many :sma_creators
    has_many :creators, through: :sma_creators
 
end
