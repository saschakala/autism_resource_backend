class SocialMediaAccount < ApplicationRecord
    has_many :sma_tags
    has_many :tags, through: :sma_tags
 
end
