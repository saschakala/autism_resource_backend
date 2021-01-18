class DropArticleCreators < ActiveRecord::Migration[6.0]
  def change
    drop_table :article_creators
  end
end
