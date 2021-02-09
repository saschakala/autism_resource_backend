class Tag < ApplicationRecord
    has_many :source_tags
    has_many :sources, through: :source_tags

    has_many :book_tags
    has_many :books, through: :book_tags

    has_many :article_tags
    has_many :articles, through: :article_tags

    has_many :sma_tags
    has_many :social_media_accounts, through: :sma_tags

    has_many :multimedia_tags
    has_many :multimedia, through: :multimedia_tags

    # scope :type, -> (tag) {where(tag_name: tag)}

    def self.books
        book_tag = Tag.find_by(tag_name: 'book')
        all_tags = book_tag.books.map {|book| book.tags}.flatten.uniq
        all_tags.keep_if { |tag| tag.tag_name != "book" }
    end


    def self.articles
        article_tag = Tag.find_by(tag_name: 'article')
        all_tags = article_tag.articles.map {|article| article.tags}.flatten.uniq
        all_tags.keep_if { |tag| tag.tag_name != "article" }
    end

    # def self.book_filter(name)
    #     tag = self.all.find_by(tag_name: name)
    #     tag.books
    # end



end



