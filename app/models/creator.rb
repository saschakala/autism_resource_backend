class Creator < ApplicationRecord
    has_many :source_creators
    has_many :sources, through: :source_creators
end
