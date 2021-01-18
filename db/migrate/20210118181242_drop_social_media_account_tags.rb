class DropSocialMediaAccountTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :social_media_account_tags
  end
end
