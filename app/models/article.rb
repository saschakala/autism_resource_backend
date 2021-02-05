class Article < ApplicationRecord
    has_many :article_tags
    has_many :tags, through: :article_tags
    has_many :article_creators
    has_many :creators, through: :article_creators

    scope :by_tag, -> (name) {joins(:tags).where('tags.tag_name' => name)}


end
