class SocialMediaAccountTag < ApplicationRecord
  belongs_to :social_media_account
  belongs_to :tag
end
