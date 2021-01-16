class CreateMiscTags < ActiveRecord::Migration[6.0]
  def change
    create_table :misc_tags do |t|
      t.belongs_to :misc, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
