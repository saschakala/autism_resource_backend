class Multimedium < ApplicationRecord
    has_many :multimedia_tags
    has_many :tags, through: :multimedia_tags
end
