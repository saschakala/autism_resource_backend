class Multimedium < ApplicationRecord
    has_many :multimedia_tags
    has_many :tags, through: :multimedia_tags
    has_many :multimedia_creators
    has_many :creators, through: :multimedia_creators

    scope :by_tag, -> (name) {joins(:tags).where('tags.tag_name' => name)}
end
