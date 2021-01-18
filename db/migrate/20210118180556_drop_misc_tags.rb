class DropMiscTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :misc_tags
  end
end
