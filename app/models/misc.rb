class Misc < ApplicationRecord
    has_many :misc_tags
    has_many :tags, through: :misc_tags
    has_many :misc_creators
    has_many :creators, through: :misc_creators
end
