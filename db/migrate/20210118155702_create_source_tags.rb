class CreateSourceTags < ActiveRecord::Migration[6.0]
  def change
    create_table :source_tags do |t|
      t.belongs_to :source, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
