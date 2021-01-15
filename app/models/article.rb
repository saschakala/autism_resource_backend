class Article < ApplicationRecord
    has_many :tags, through: :article_tags
end
