class Multimedium < ApplicationRecord
    has_many :tags, through: :multimedium_tags
end
