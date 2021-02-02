class CreateBookCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :book_creators do |t|
      t.belongs_to :book, foreign_key: true
      t.belongs_to :creator, foreign_key: true

      t.timestamps
    end
  end
end
