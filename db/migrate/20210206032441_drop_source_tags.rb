class DropSourceTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :source_tags
  end
end
