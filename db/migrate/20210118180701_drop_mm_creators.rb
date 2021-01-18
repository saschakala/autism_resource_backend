class DropMmCreators < ActiveRecord::Migration[6.0]
  def change
    drop_table :mm_creators
  end
end
