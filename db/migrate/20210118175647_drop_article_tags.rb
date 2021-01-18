class DropArticleTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :article_tags
  end
end
