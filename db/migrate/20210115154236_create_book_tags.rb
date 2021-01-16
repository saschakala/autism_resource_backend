class CreateBookTags < ActiveRecord::Migration[6.0]
  def change
    create_table :book_tags do |t|
      t.belongs_to :book, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
