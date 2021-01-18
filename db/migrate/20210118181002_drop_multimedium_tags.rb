class DropMultimediumTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :multimedium_tags
  end
end
