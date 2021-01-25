class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.string :title
      t.text :feedback
      t.string :name

      t.timestamps
    end
  end
end
