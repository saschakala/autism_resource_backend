class CreateMiscCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :misc_creators do |t|
      t.belongs_to :misc, foreign_key: true
      t.belongs_to :creator, foreign_key: true

      t.timestamps
    end
  end
end
