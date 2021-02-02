class Creator < ApplicationRecord
    has_many :source_creators
    has_many :sources, through: :source_creators

    has_many :book_creators
    has_many :books, through: :book_creators
end

