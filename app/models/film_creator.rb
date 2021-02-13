class FilmCreator < ApplicationRecord
  belongs_to :film
  belongs_to :creator
end
