class CreateMiscs < ActiveRecord::Migration[6.0]
  def change
    create_table :miscs do |t|
      t.string :title
      t.string :url
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
