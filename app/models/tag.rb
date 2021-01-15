class Tag < ApplicationRecord
    has_many :articles, through: :article_tags
    has_many :books, through: :book_tags
    has_many :miscs, through: :misc_tags
    has_many :multimedia, through: :multimedium_tags
    has_many :social_media_accounts, through: :social_media_account_tags
end