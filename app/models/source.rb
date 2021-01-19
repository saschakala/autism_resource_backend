class Source < ApplicationRecord
    has_many :source_tags
    has_many :tags, through: :source_tags
    has_many :source_creators
    has_many :creators, through: :source_creators
end