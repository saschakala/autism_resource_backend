class Film < ApplicationRecord
    has_many :film_tags
    has_many :tags, through: :film_tags

    has_many :film_creators
    has_many :creators, through: :film_creators

    scope :by_tag, -> (name) {joins(:tags).where('tags.tag_name' => name)}
end
