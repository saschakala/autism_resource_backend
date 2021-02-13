class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :genre
      t.string :url
      t.string :img_url
      t.text :description
      t.string :film_type

      t.timestamps
    end
  end
end
