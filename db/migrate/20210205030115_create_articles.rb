class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :genre
      t.string :url
      t.string :img_url
      t.text :description

      t.timestamps
    end
  end
end
