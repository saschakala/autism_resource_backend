class Tag < ApplicationRecord
    has_many :source_tags
    has_many :sources, through: :source_tags

    has_many :book_tags
    has_many :books, through: :book_tags

    has_many :article_tags
    has_many :articles, through: :article_tags

    # scope :type, -> (tag) {where(tag_name: tag)}

    def self.books
        book_tag = Tag.find_by(tag_name: 'book')
        all_tags = book_tag.books.map {|book| book.tags}.flatten.uniq
        all_tags.keep_if { |tag| tag.tag_name != "book" }
    end

    # def self.book_filter(name)
    #     tag = self.all.find_by(tag_name: name)
    #     tag.books
    # end



end



