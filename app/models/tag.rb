class Tag < ApplicationRecord
    has_many :source_tags
    has_many :sources, through: :source_tags
end
