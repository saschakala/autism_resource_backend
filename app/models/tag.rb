class Tag < ApplicationRecord
    has_many :source_tags
    has_many :sources, through: :source_tags

    has_many :book_tags
    has_many :books, through: :book_tags

    def self.books
        book_tag = Tag.find_by(tag_name: 'book')
        book_tag.books.map {|book| book.tags}.flatten.uniq
    end



end



