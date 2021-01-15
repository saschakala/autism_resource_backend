class CreateMultimedia < ActiveRecord::Migration[6.0]
  def change
    create_table :multimedia do |t|
      t.string :title
      t.string :type
      t.string :img_url
      t.string :url

      t.timestamps
    end
  end
end
