class Creator < ApplicationRecord
    has_many :book_creators
    has_many :books, through: :book_creators
end
