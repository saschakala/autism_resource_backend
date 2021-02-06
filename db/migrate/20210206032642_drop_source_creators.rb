class DropSourceCreators < ActiveRecord::Migration[6.0]
  def change
    drop_table :source_creators
  end
end
