class CreateMultimediaTags < ActiveRecord::Migration[6.0]
  def change
    create_table :multimedia_tags do |t|
      t.belongs_to :multimedium, foreign_key: true
      t.belongs_to :tags, foreign_key: true

      t.timestamps
    end
  end
end
