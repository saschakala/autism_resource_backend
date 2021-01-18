class DropSmaCreators < ActiveRecord::Migration[6.0]
  def change
    drop_table :sma_creators
  end
end
