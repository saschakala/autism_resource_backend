class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :url
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
