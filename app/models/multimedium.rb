class Multimedium < ApplicationRecord
    has_many :multimedium_tags
    has_many :tags, through: :multimedium_tags
    has_many :mm_creators
    has_many :creators, through: :mm_creators
end
