class DropBookCreatorsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :book_creators
  end
end
