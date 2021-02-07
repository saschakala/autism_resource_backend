class CreateSocialMediaAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :social_media_accounts do |t|
      t.string :platform
      t.string :handle
      t.string :name
      t.string :url
      t.string :img_url
      t.text :description
      t.string :genre

      t.timestamps
    end
  end
end
