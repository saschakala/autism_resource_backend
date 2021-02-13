class DropMultimediaTagsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :multimedia_tags
  end
end
