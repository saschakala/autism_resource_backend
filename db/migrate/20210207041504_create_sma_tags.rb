class CreateSmaTags < ActiveRecord::Migration[6.0]
  def change
    create_table :sma_tags do |t|
      t.belongs_to :social_media_account, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
