class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :url
      t.text :excerpt

      t.timestamps
    end
  end
end
