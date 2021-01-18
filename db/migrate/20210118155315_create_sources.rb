class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.string :type
      t.string :title
      t.string :platform
      t.string :handle
      t.string :genre
      t.string :url
      t.string :img_url
      t.text :description


      t.timestamps
    end
  end
end
