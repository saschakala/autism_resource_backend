class Book < ApplicationRecord
    has_many :tags, through: :book_tags
end
