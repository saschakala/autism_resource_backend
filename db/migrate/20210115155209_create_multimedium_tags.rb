class CreateMultimediumTags < ActiveRecord::Migration[6.0]
  def change
    create_table :multimedium_tags do |t|
      t.belongs_to :multimedium, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
