class CreateSocialMediaAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :social_media_accounts do |t|
      t.string :name
      t.string :handle
      t.string :platform
      t.string :genre
      t.text :bio
      t.string :img_url

      t.timestamps
    end
  end
end
