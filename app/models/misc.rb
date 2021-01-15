class Misc < ApplicationRecord
    has_many :tags, through: :misc_tags
end
