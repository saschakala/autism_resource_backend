class ArticleCreator < ApplicationRecord
  belongs_to :article
  belongs_to :creator
end
