class Book < ApplicationRecord
    has_many :book_tags
    has_many :tags, through: :book_tags
    has_many :book_creators
    has_many :creators, through: :book_creators

    scope :by_tag, -> (name) {joins(:tags).where('tags.tag_name' => name)}

    def self.tag_filter(name)
        tag = self.all.find_by(tag_name: name)
        tag.books
    end


end
