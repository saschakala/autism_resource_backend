class Multimedium < ApplicationRecord
    has_many :multimedia_tags
    has_many :tags, through: :multimedia_tags
    has_many :multimedia_creators
    has_many :creators, through: :multimedia_creators
end
