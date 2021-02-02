class Book < ApplicationRecord
    has_many :book_tags
    has_many :tags, through: :book_tags
    has_many :book_creators
    has_many :creators, through: :book_creators
end
