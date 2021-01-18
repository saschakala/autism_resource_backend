class DropMiscCreators < ActiveRecord::Migration[6.0]
  def change
    drop_table :misc_creators
  end
end
