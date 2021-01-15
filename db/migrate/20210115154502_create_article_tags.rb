class CreateArticleTags < ActiveRecord::Migration[6.0]
  def change
    create_table :article_tags do |t|
      t.belongs_to :article, null: false, foreign_key: true
      t.string :tag_belongs
      t.string :to

      t.timestamps
    end
  end
end
