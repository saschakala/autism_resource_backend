class Source < ApplicationRecord
    has_many :source_tags
    has_many :tags, through: :source_tags
    has_many :source_creators
    has_many :creators, through: :source_creators


    def self.books
        self.all.select { |source| source.source_type == "Book"}
    end

    def self.articles
        self.all.select { |source| source.source_type == "Article"}
    end


end