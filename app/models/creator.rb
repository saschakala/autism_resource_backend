class Creator < ApplicationRecord
    has_many :articles
    has_many :books
end
