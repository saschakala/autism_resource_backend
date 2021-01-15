class RemoveTagBelongsFromArticleTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :article_tags, :tag_belongs, :string
    remove_column :article_tags, :to, :string
  end
end
