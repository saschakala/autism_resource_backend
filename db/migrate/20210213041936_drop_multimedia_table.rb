class DropMultimediaTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :multimedia
  end
end
