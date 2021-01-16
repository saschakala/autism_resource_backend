class Creator < ApplicationRecord
    has_many :book_creators
    has_many :books, through: :book_creators
    has_many :article_creators
    has_many :articles, through: :article_creators
    has_many :sma_creators
    has_many :social_media_accounts, through: :sma_creators
end
