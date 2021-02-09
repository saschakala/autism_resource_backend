class CreateMultimediaCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :multimedia_creators do |t|
      t.belongs_to :multimedium, foreign_key: true
      t.belongs_to :creator, foreign_key: true

      t.timestamps
    end
  end
end
