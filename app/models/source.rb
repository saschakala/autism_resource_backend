class Source < ApplicationRecord
    has_many :source_tags
    has_many :tags, through: :source_tags
    has_many :source_creators
    has_many :creators, through: :source_creators

    scope :type, -> (type) {where(source_type: type)}
    # scope :type, -> (type) {joins(:tags).where('tags.tag_name = type')}
    


    # def self.books
    #     self.all.select { |source| source.source_type == "Book"}
    # end

    def self.articles
        self.all.select { |source| source.source_type == "Article"}
    end

    def self.book_tags
        tags = self.books.map {|source| source.tags}
        tags.map.with_index {|tag, i| tag[i]}
    end


end