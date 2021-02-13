class DropMultimediaCreatorsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :multimedia_creators
  end
end
