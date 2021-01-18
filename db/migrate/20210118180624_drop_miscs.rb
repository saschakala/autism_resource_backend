class DropMiscs < ActiveRecord::Migration[6.0]
  def change
    drop_table :miscs
  end
end
