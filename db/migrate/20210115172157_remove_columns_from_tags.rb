class RemoveColumnsFromTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :meme, :boolean
    remove_column :tags, :personal, :boolean
    remove_column :tags, :queer, :boolean
    remove_column :tags, :research, :boolean
    remove_column :tags, :comedy, :boolean
    remove_column :tags, :autobiographical, :boolean
    remove_column :tags, :poetry, :boolean
    remove_column :tags, :novel, :boolean
    remove_column :tags, :short_story, :boolean
  end
end
