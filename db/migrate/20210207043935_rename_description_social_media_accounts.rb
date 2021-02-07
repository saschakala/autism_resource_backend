class RenameDescriptionSocialMediaAccounts < ActiveRecord::Migration[6.0]
  def change
    rename_column :social_media_accounts, :description, :bio
  end
end
