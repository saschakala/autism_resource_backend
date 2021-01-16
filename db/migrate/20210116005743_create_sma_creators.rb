class CreateSmaCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :sma_creators do |t|
      t.belongs_to :social_media_account, foreign_key: true
      t.belongs_to :creator, foreign_key: true

      t.timestamps
    end
  end
end
