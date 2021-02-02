class BookTag < ApplicationRecord
  belongs_to :Book
  belongs_to :Tag
end
