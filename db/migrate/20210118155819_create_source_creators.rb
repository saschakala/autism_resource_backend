class CreateSourceCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :source_creators do |t|
      t.belongs_to :source, foreign_key: true
      t.belongs_to :creator, foreign_key: true

      t.timestamps
    end
  end
end
