class CreateFilmTags < ActiveRecord::Migration[6.0]
  def change
    create_table :film_tags do |t|
      t.belongs_to :film, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
