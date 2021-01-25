class Tag < ApplicationRecord
    has_many :source_tags
    has_many :sources, through: :source_tags

    def self.books
        book_tag = Tag.find_by(tag_name: 'book')
        tags = book_tag.sources.map {|source| source.tags}
        tags.map.with_index {|tag, i| tag[i]}
    end



end


